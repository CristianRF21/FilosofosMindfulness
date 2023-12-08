//
//  ContentView.swift
//  FilosofosMindfulness
//
//  Created by Cristian Ramirez on 11/24/23.
//

import SwiftUI

struct Quote: Identifiable {
    var id = UUID()
    var text: String
    var author: String
}

struct ContentView: View {
    var body: some View {
        // Main page
        NavigationView {
            MainPage()
        }
    }
}

struct MainPage: View {
    @State private var displayHome = false

    var body: some View {
        VStack(alignment: .leading) {
            Text("חי‎").font(.system(size: 100))
            Text("filósoficos. mindfulness.").font(.system(size: 50))
            Text("harvard college").font(.system(size: 15))
            Text("by: cristian ramirez").font(.system(size: 15))
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            
            

            HStack {
                Spacer()
                NavigationLink(destination: HomeView()) {
                    Image(systemName: "capsule").padding()
                }
                .foregroundColor(.white)
                .frame(width: 100, height: 150)
                .background(Color.black)
                .clipShape(Capsule())
                Spacer()
            }
        }
        .padding(.all, 20)
    }
}


struct HomeView: View {
    var body: some View {
        // create tabs
        TabView {
            HomeTabView() // First Tab
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            QuotesView() // Second Tab
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Daily Quotes")
            }

            TimerView() // Third Tab
                .tabItem {
                    Image(systemName: "clock")
                    Text("Timer")
                }
            SupportView() // Fourth Tab
                .tabItem {
                Image(systemName: "cross.fill")
                Text("Support")
            }
        }
    }
}

struct HomeTabView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Hello, Welcome!").font(.system(size: 50))
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                Text("Embark on a journey into the realms of mindfulness, philosophy, and meditation with this user-friendly and accessible app. Delve into a world of tranquility and self-discovery with simplicity and ease of use.")
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Text("Welcome to a platform where daily inspiration through thoughtful quotes awaits you. Take a moment for yourself with our meditation timer, and find valuable support information whenever you need a little extra help.")
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Text("My hope for every user is for them to discover solace on this uncomplicated platform, offering relief from any challenges they may be facing.")
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Text("In good health.")
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Text("- C")


                
            }
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct QuotesView: View {
    let quotes: [Quote] = [
            Quote(text: "Just breathe.", author: "Unknown"),
            Quote(text: "Have courage and be kind, where there is kindness there is goodness and where there is goodness there is magic.", author: "Cinderella"),
           Quote(text: "There is hope, even when your brain tells you there isn’t.", author: "John Green"),
           Quote(text: "Being able to be your true self is one of the strongest components of good mental health.", author: "Lauren Fogel Mersy, n.d"),
           Quote(text: "It’s okay not to be okay.", author: "Jo Yong"),
           Quote(text: "You are not your mental illness.", author: "Unknown"),
           Quote(text: "Your struggles do not define you.", author: "Unknown"),
           Quote(text: "Taking care of your mental health is an act of self-love.", author: "Unknown"),
           Quote(text: "It’s okay to take a break and prioritize your mental health.", author: "Unknown"),
           Quote(text: "You are not alone in your struggles.", author: "Unknown"),
           Quote(text: "It’s okay to ask for support when you need it.", author: "Unknown"),
           Quote(text: "Mental health is not a destination, it’s a journey.", author: "Unknown"),
           Quote(text: "Healing is not linear, but it is possible.", author: "Unknown"),
           Quote(text: "You are stronger than you realize.", author: "Unknown"),
           Quote(text: "Your mental health journey is unique to you.", author: "Unknown"),
           Quote(text: "Small steps can lead to big progress in mental health.", author: "Unknown"),
           Quote(text: "You are capable of overcoming your mental health challenges.", author: "Unknown"),
           Quote(text: "Mental illness is not a personal failure, it’s a medical condition.", author: "Unknown"),
           Quote(text: "Your mental health should not be stigmatized.", author: "Unknown"),
           Quote(text: "You are deserving of a life free from mental health struggles.", author: "Unknown"),
           Quote(text: "Your mental health journey may be difficult, but it’s worth it.", author: "Unknown"),
           Quote(text: "You are not weak for struggling with mental health issues.", author: "Unknown"),
           Quote(text: "Mental health issues do not make you any less of a person.", author: "Unknown"),
           Quote(text: "Your mental health is just as important as your career or education.", author: "Unknown"),
           Quote(text: "You have the power to overcome your mental health challenges.", author: "Unknown"),
           Quote(text: "Your mental health struggles do not define your future.", author: "Unknown"),
           Quote(text: "You are not alone in your journey towards better mental health.", author: "Unknown"),
           Quote(text: "Mental health recovery is possible, and it starts with seeking help.", author: "Unknown"),
           Quote(text: "You are worthy of a life filled with joy and happiness.", author: "Unknown"),
           Quote(text: "It’s okay to have bad days and ask for support when you need it.", author: "Unknown"),
           Quote(text: "Your mental health journey may be a lifelong process, but it’s worth it.", author: "Unknown"),
           Quote(text: "You are capable of breaking free from negative thought patterns.", author: "Unknown"),
           Quote(text: "Mental health is just as important as physical health when it comes to overall wellness.", author: "Unknown"),
           Quote(text: "It’s okay to take time to rest and recharge when you’re feeling overwhelmed.", author: "Unknown"),
           Quote(text: "Storms don't last forever, this too shall pass.t", author: "Unknown"),
           Quote(text: "You are not alone in your struggles, even if it feels that way.", author: "Unknown"),
           Quote(text: "Mental health is a journey of self-discovery and growth.", author: "Unknown"),
           Quote(text: "You are worthy of receiving support and love, even on your toughest days.", author: "Unknown"),
           Quote(text: "It’s okay to set boundaries to protect your mental health.", author: "Unknown"),
           Quote(text: "You are capable of creating a life filled with purpose and meaning, despite your mental health challenges.", author: "Author 2"),
           Quote(text: "You are not defined by your mistakes but rather by the resilience that is born from them. ", author: "Unknown"),
           Quote(text: "You are not some statistic", author: "Unknown"),
           Quote(text: "Emancipate yourselves from mental slavery. None but ourselves can free our minds.", author: "Bob Marley"),
           Quote(text: "Anxiety is a living body, Poised beside us like a shadow. It the last creature standing, The only beast who loves us enough to stay.", author: "Amanda Gorman"),
           Quote(text: "To beat the invincible, you must become the invincible", author: "Unknown"),
           Quote(text: "Life is to be lived, not controlled; and humanity is won by continuing to play in the face of certain defeat.", author: "Ralph Ellison"),
           Quote(text: "Today you are you, that is truer than true. There is no one alive who is youer than you.", author: "Dr. Seuss"),
           Quote(text: "Why fit in when you were born to stand out!", author: "Dr. Seuss"),
           Quote(text: "Your illness does not define you, but your strength & courage does.", author: "Unknown"),
           Quote(text: "A new day is on the horizon.", author: "Unknown"),
           Quote(text: "Healing doesn't mean the damage never existed. It means the damage no longer controls our lives", author: "Akshay Dubey"),
           Quote(text: "Don't believe everything you think. Thoughts are just that – thoughts.", author: "Allan Lokos"),
           Quote(text: "You are not a burden. You have a burden, which by definition is too heavy to carry on your own.", author: "Unknown"),
           Quote(text: "The only journey us the journey w", author: "Unknown"),
           Quote(text: "Recovery is not one and done. It is a lifelong journey that takes place one day, one step at a time.", author: "Unknown"),
           Quote(text: "Sometimes the people around you won’t understand your journey. They don’t need to, it’s not for them.", author: "Joubert Botha"),
           Quote(text: "You are allowed to take up space. You are allowed to take care of yourself. You are allowed to prioritize your mental health.", author: "Melissa Valdellon"),
           Quote(text: "Healing is an art. It takes time, it takes practice, it takes love.", author: "Maza Dohta"),
           Quote(text: "Your mental health is more important than the test, the interview, the lunch date, the meeting, the family dinner, and the grocery-run. Take care of yourself.", author: "Unknown"),
           Quote(text: "The only journey is the journey within.", author: "Ranier Maria Rilke"),
           Quote(text: "Your mental health is a garden. You must cultivate and care for it in order to see its full potential.", author: "Unknown"),
           Quote(text: "You are not your illness. You have an individual story to tell. You have a name, a history, a personality. Staying yourself is part of the battle.", author: "Julian Seifter"),
           Quote(text: "Mental health is not a destination, but a process. It’s about how you drive, not where you’re going.", author: "Noam Shpancer"),
           Quote(text: "Today is a beautiful day, I’ve never seen this one before.", author: "Maya Anngelou"),
           Quote(text: "People will forget what you said, people will forget what you did, but people will never forget how you made them feel.", author: "Maya Anngelou"),
           Quote(text: "Success is liking yourself, liking what you do, and liking how you do it.", author: "Maya Anngelou"),
            Quote(text: "I don't care what people think about me, because I believe in myself.", author: "Cinderella"),
           
           
       ]

       @State private var currentQuoteIndex = 0

       var body: some View {
           VStack {
               Text("Daily Quotes").font(.system(size: 50))

               VStack(alignment: .leading) {
                   Text(quotes[currentQuoteIndex].text)
                       .font(.headline)
                   Text("- \(quotes[currentQuoteIndex].author)")
                       .font(.subheadline)
                       .foregroundColor(.secondary)
               }
               .padding()

               Button(action: {
                   self.showRandomQuote()
               }) {
                   Text("Show Another Quote")
                       .font(.system(size: 24, weight: .bold, design: .default))
                       .padding(10)
                       .foregroundColor(.white)
                       .background(Color.black)
                       .clipShape(Capsule())
               }
               .padding()
           }
           .navigationTitle("Quotes")
       }

       private func showRandomQuote() {
           // Generate random quotes
           var newIndex = currentQuoteIndex
           while newIndex == currentQuoteIndex {
               newIndex = Int.random(in: 0..<quotes.count)
           }

           // Different Quote
           currentQuoteIndex = newIndex
       }
   }

struct TimerView: View {
    @State private var isRunning = false
    @State private var elapsedTime: TimeInterval = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack(alignment: .leading) {
            Text("Meditation Timer").font(.system(size: 50))
              

            Text("Elapsed Time: \(formattedTime(elapsedTime))")
                .font(.system(size: 24, weight: .bold, design: .default))
                 .foregroundColor(.white)
                 .padding(10)
                 .background(Color.black)
                 .clipShape(Capsule())

            Button(action: {
                if isRunning {
                    resetTimer()
                } else {
                    isRunning.toggle()
                }
            }) {
                Text(isRunning ? "Stop" : "Start")
            }
            .padding()
        }
        .onReceive(timer) { _ in
            if isRunning {
                elapsedTime += 1
            }
        }
    }

    private func formattedTime(_ time: TimeInterval) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .positional
        return formatter.string(from: time) ?? "00:00:00"
    }
    private func resetTimer() {
        isRunning = false
        elapsedTime = 0
    }
}

struct SupportView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Help is available:")
                .font(.system(size: 60)).fontWeight(.regular).padding(.top)
            Text("If you or someone you know is in crisis or experiencing thoughts of suicide, please contact:")
                .font(.headline)
                .padding()

            SupportContactView(title: "National Suicide Prevention Lifeline", contact: "Call 1-800-273-TALK (1-800-273-8255)")

            SupportContactView(title: "Crisis Text Line", contact: "Text HOME to 741741")

            Text("Available 24/7. Confidential support. You are not alone.")
                .foregroundColor(.red)

            
        }
        .padding()
        .navigationBarTitle("Support")
    }
}

struct SupportContactView: View {
    var title: String
    var contact: String

    var body: some View {
        VStack(alignment: .leading, spacing: 9) {
            Text(title)
                .font(.headline)
                .foregroundColor(.blue)

            Text(contact)
                .foregroundColor(.secondary)
        }
        .padding(8)
        .background(RoundedRectangle(cornerRadius: 70).foregroundColor(Color(.systemGray6)))
        .padding(.vertical)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


