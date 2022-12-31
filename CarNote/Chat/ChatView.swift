//
//  ChatView.swift
//  carNote
//
//  Created by Apple Esprit on 28/12/2022.
//

import UIKit
import MessageKit


class ChatView: MessagesViewController, MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
    var currentSender: MessageKit.SenderType
    
    // VARS
    var currentConversation: Conversation?
    var messages = [MessageType]()
    var timer: Timer?

    
    // LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesDisplayDelegate = self
        messagesCollectionView.messagesLayoutDelegate = self

      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        reloadMessages()
        startTimer()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        stopTimer()
    }
    
    override func viewDidLayoutSubviews() {
        messageInputBar.sendButton.addAction(UIAction(handler: { [self] UIAction in
            let messageDescription = messageInputBar.inputTextView.text!
            messageInputBar.inputTextView.text = ""
            
            MessagerieViewModel.sharedInstance.envoyerMessage(recepteur: (currentConversation?.receiver._id)!, description: messageDescription) { success, messageFromRep in
                if success {
                    let currentUser = (currentConversation?.sender)!
                    var message = messageFromRep!
                    
                    message.sender = Sender(senderId: currentUser._id, displayName: currentUser.last_name)
                    messages.append(message)
                    messagesCollectionView.reloadData()
                } else {
                   // self.present(Alrt.makeServerErrorAlert(),animated: true)
                }
            }
        }), for: .touchUpInside)
    }
    
    // PROTOCOLS
    func CurrentSender() -> SenderType {
        let currentUser = (currentConversation?.sender)!
        return Sender(senderId: currentUser._id, displayName: currentUser.last_name)
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
    }
    
    // FUNCTIONS
    @objc func reloadMessages() {
        MessagerieViewModel.sharedInstance.recupererMesMessages(idConversation: (currentConversation?._id)!) { [self] success, messagesFromRep in
            if success {
                messages = messagesFromRep!
                messagesCollectionView.reloadData()
            } else {
               // self.present(Alrt.makeServerErrorAlert(),animated: true)
            }
        }
    }
    
    func startTimer () {
        guard timer == nil else { return }
        
        timer =  Timer.scheduledTimer(
            timeInterval: 5,
            target      : self,
            selector    : #selector(reloadMessages),
            userInfo    : nil,
            repeats     : true)
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
 
}
