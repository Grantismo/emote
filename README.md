# Emote
![icon](https://raw.github.com/Grantismo/emote/master/Icon.png)

##Documentation

###Objective
Our main objective in creating Emote is to connect at risk individuals with the most relevant and useful resources in a warm and inviting way. As experts in the mobile development space, we recognize that Emote requires a beautiful and intuitive interface to ensure a comfortable and enjoyable user experience.

###Overview
The two overarching features of Emote are an easy to use safety plan accessible from anywhere in the app (with or without an internet connection), and a categorized collection of resources which give the user immediate access to hyper-relevant help. Resources are categorized by different emotional states which avoids overwhelming the user with too many resources and helps better address the user's actual needs. 

###Installing Emote On A Device

1. Find the "Emote.ipa" file in the project directory.
2. Double click on the file to open it in iTunes.
3. In iTunes, click the test device and go to the "Apps" section.
4. You should see Emote in the list of apps on the right.
5. Click the "Install" button.
6. Sync the test device and Emote should be installed on completion of the sync.

###Walkthrough
####Home Screen
The user is greeted with a scrolling list of interactive emotional states. Each emotion, represented by a button, is colored using an algorithm designed to mesh all of the colors together in an appealing way. The user will then find it natural to tap the button that represents their emotional state. Upon tapping a button the user is navigated to a list of resources that we have associated with that emotion.
 
![home screen](https://raw.github.com/Grantismo/emote/master/HomeScreen.png)
####Resources Screen
The resources screen shows the user a list of interactive resources associated with the emotional state that they selected on the previous page. We found that the most useful resources were websites and phone numbers, therefore each resource in the resources list will either navigate the user to an in-app web page, or prompts the user to call the number specified by the resource.

![resources screen](https://raw.github.com/Grantismo/emote/master/ResourcesScreen.png)
####Resource Screen
By selecting a website resource the user is navigated to an in-app website screen that loads the website that the user selected.

![resource screen](https://raw.github.com/Grantismo/emote/master/ResourceScreen.png)
####Add a new resource
In addition to over 30 pre-loaded website and phone number resources, Emote also gives the user the ability to add their own resource. The ability to add a custom resource more thoroughly engages the user and promotes further use of Emote. The user is allowed to add either a website or phone number resource to their list of resources and is encouraged to associate that resource with a set of emotions. That way when the user is feeling a certain way in the future they will be able to more quickly find the resource that they know they need.

![new resource screen](https://raw.github.com/Grantismo/emote/master/NewResourceScreen.png)

####Safety plan (part 1)
Not only does Emote offer an extensive set of preloaded resources, it also provides a screen to setup a safety plan that can be accessed from anywhere within the app. All the user has to do is tap the bar at the bottom of the screen at any time to reveal the safety plan.

The safety plan consists of 6 discrete steps.

The first step of the safety plan is to detail warning signs of systems for the user. The user is prompted to list out in text: thoughts, situations or behaviors that cause them to have suicidal symptoms. The user can edit these later or skip to the next step.

![safety plan 1](https://raw.github.com/Grantismo/emote/master/SafetyPlan1.png)
####Safety plan (part 2)
Step 2 of the safety plan is to detail internal coping strategies for systems of suicide. The user is prompted to list out in text: thoughts, situations or behaviors might distract or relax them. The user can edit these later or skip to the next step.

![safety plan 2](https://raw.github.com/Grantismo/emote/master/SafetyPlan2.png)
####Safety plan (part 3)
Step 3 of the safety plan is to detail places and social settings that the user believes will help them with symptoms of suicide. The user is prompted to list out the names and phone numbers of places that might distract or relax them. The user can edit these later or skip to the next step.

![safety plan 3](https://raw.github.com/Grantismo/emote/master/SafetyPlan3.png)
####Safety plan (part 4)
Step 4 of the safety plan is to detail people that the user can contact for help. The user is prompted to list out the names and phone numbers of people that will be able to help them feel better. The user can edit these later or skip to the next step.

![safety plan 4](https://raw.github.com/Grantismo/emote/master/SafetyPlan4.png)
####Safety plan (part 5)
Step 5 of the safety plan is to detail professionals and agencies that the user can depend on. The user is prompted to list out the names and phone numbers of professionals that are equipped to handle the problems the user might be facing. The user can edit these later or skip to the next step.

![safety plan 5](https://raw.github.com/Grantismo/emote/master/SafetyPlan5.png)
####Safety plan (part 6)
Step 6 of the safety plan is to actions the user can take to make their living environment more safe. The user is prompted to list out in text: habits and actions they can take to make their environment more safe. The user can edit these later or skip to the next step.

![safety plan 6](https://raw.github.com/Grantismo/emote/master/SafetyPlan6.png)

###Future Modification

We designed Emote to be extensible for future modification. There are two most likely aspects of Emote that could need to be changed in the future. 

####Adding Emotions

Emotions are created in the AppDelegate the first time the app is run on the users device. To change emotions, simply add to the dictionaries created in the ```seedEmotions``` method of the AppDelegate. 

```
- (void)seedEmotions {
    NSDictionary *emotionColorDict = @{@"positive": [UIColor positiveColor],
                                       @"angry": [UIColor angryColor],
                                       @"lonely": [UIColor lonelyColor],
                                       @"depressed": [UIColor depressedColor],
                                       @"hurt": [UIColor hurtColor],
                                       @"grateful": [UIColor gratefulColor],
                                       @"disinterested": [UIColor disinterestedColor],
                                       @"worthless": [UIColor worthlessColor]};
    
    NSDictionary *emotionDescriptionDict = @{@"positive":
                                                 @"When you are feeling positive about recovery, it’s a great time to reach out and help others who may be going through their own struggles. Connect with them.",
                                             @"angry":
                                                 @"Anger, fear, and rage can push others away, leading to isolation and depression. These resources can connect you to people who can help you cope.",
                                             @"lonely":
                                                 @"Many individuals coping with suicidal thoughts feel lonely and isolated. Withdrawing further can seem natural, but these resources can connect you to others who can help.",
                                             @"depressed":
                                                 @"Severe depression has a high association with those considering suicide or recovering from a suicide attempt. Here are some resources and groups that can help.",
                                             @"hurt":
                                                 @"Feeling like you’ve been hurt or wounded is common amongst those with suicidal thoughts. Here are some resources that can help you address the hurt.",
                                             @"grateful":
                                                 @"Being open and honest with others who are struggling can be a true help to them, and you as well. These resources can assist during recovery, and connect you with others.",
                                             @"worthless":
                                                 @"Self-reproach, worthlessness and guilt are common sources of despair. You are not alone in these feelings, and these resources can connect you to others who can help.",
                                             @"disinterested":
                                                 @"A loss of interest or pleasure in hobbies, outdoor activites or being around friends and family can be frequent. These resources may help engage your mind and interest."};
    
    for(NSString* key in emotionColorDict){
        NSString* name = key;
        UIColor* color = [emotionColorDict objectForKey:key];
        Emotion* emotion = (Emotion*)[NSEntityDescription
                                      insertNewObjectForEntityForName:@"Emotion"inManagedObjectContext:self.managedObjectContext];
        emotion.name = name;
        emotion.color = color;
        
        emotion.emotionDescription = [emotionDescriptionDict objectForKey:key];
    }
}
```

####Adding Preloaded Resources 

All preloaded resources are stored in the ```resources.json``` file. In order to add new preloaded resource simply add a row to that file following this template:

```
{"title": "TITLE OF RESOURCE","description": "Description of resource", "link": "http://www.description/of/resource", "emotions": "LONELY / ANGRY / OTHER EMOTIONS"}
```

##Contributors

* Grant Warman <grant.warman@gmail.com>
* Lucas Best <lucas.best.5@gmail.com>
* Joshua Berman <joshua.s.berman@gmail.com>

##License

CC Attribution 4.0 License

THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THIS CREATIVE COMMONS PUBLIC LICENSE ("CCPL" OR "LICENSE"). THE WORK IS PROTECTED BY COPYRIGHT AND/OR OTHER APPLICABLE LAW. ANY USE OF THE WORK OTHER THAN AS AUTHORIZED UNDER THIS LICENSE OR COPYRIGHT LAW IS PROHIBITED.

BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU ACCEPT AND AGREE TO BE BOUND BY THE TERMS OF THIS LICENSE. TO THE EXTENT THIS LICENSE MAY BE CONSIDERED TO BE A CONTRACT, THE LICENSOR GRANTS YOU THE RIGHTS CONTAINED HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND CONDITIONS.

1. Definitions

"Collective Work" means a work, such as a periodical issue, anthology or encyclopedia, in which the Work in its entirety in unmodified form, along with one or more other contributions, constituting separate and independent works in themselves, are assembled into a collective whole. A work that constitutes a Collective Work will not be considered a Derivative Work (as defined below) for the purposes of this License.
"Creative Commons Compatible License" means a license that is listed at http://creativecommons.org/compatiblelicenses that has been approved by Creative Commons as being essentially equivalent to this License, including, at a minimum, because that license: (i) contains terms that have the same purpose, meaning and effect as the License Elements of this License; and, (ii) explicitly permits the relicensing of derivatives of works made available under that license under this License or either a Creative Commons unported license or a Creative Commons jurisdiction license with the same License Elements as this License.
"Derivative Work" means a work based upon the Work or upon the Work and other pre-existing works, such as a translation, musical arrangement, dramatization, fictionalization, motion picture version, sound recording, art reproduction, abridgment, condensation, or any other form in which the Work may be recast, transformed, or adapted, except that a work that constitutes a Collective Work will not be considered a Derivative Work for the purpose of this License. For the avoidance of doubt, where the Work is a musical composition or sound recording, the synchronization of the Work in timed-relation with a moving image ("synching") will be considered a Derivative Work for the purpose of this License.
"License Elements" means the following high-level license attributes as selected by Licensor and indicated in the title of this License: Attribution, ShareAlike.
"Licensor" means the individual, individuals, entity or entities that offers the Work under the terms of this License.
"Original Author" means the individual, individuals, entity or entities who created the Work.
"Work" means the copyrightable work of authorship offered under the terms of this License.
"You" means an individual or entity exercising rights under this License who has not previously violated the terms of this License with respect to the Work, or who has received express permission from the Licensor to exercise rights under this License despite a previous violation.
2. Fair Use Rights. Nothing in this license is intended to reduce, limit, or restrict any rights arising from fair use, first sale or other limitations on the exclusive rights of the copyright owner under copyright law or other applicable laws.

3. License Grant. Subject to the terms and conditions of this License, Licensor hereby grants You a worldwide, royalty-free, non-exclusive, perpetual (for the duration of the applicable copyright) license to exercise the rights in the Work as stated below:

to reproduce the Work, to incorporate the Work into one or more Collective Works, and to reproduce the Work as incorporated in the Collective Works;
to create and reproduce Derivative Works provided that any such Derivative Work, including any translation in any medium, takes reasonable steps to clearly label, demarcate or otherwise identify that changes were made to the original Work. For example, a translation could be marked "The original work was translated from English to Spanish," or a modification could indicate "The original work has been modified.";
to distribute copies or phonorecords of, display publicly, perform publicly, and perform publicly by means of a digital audio transmission the Work including as incorporated in Collective Works;
to distribute copies or phonorecords of, display publicly, perform publicly, and perform publicly by means of a digital audio transmission Derivative Works.
For the avoidance of doubt, where the Work is a musical composition:

Performance Royalties Under Blanket Licenses. Licensor waives the exclusive right to collect, whether individually or, in the event that Licensor is a member of a performance rights society (e.g. ASCAP, BMI, SESAC), via that society, royalties for the public performance or public digital performance (e.g. webcast) of the Work.
Mechanical Rights and Statutory Royalties. Licensor waives the exclusive right to collect, whether individually or via a music rights agency or designated agent (e.g. Harry Fox Agency), royalties for any phonorecord You create from the Work ("cover version") and distribute, subject to the compulsory license created by 17 USC Section 115 of the US Copyright Act (or the equivalent in other jurisdictions).
Webcasting Rights and Statutory Royalties. For the avoidance of doubt, where the Work is a sound recording, Licensor waives the exclusive right to collect, whether individually or via a performance-rights society (e.g. SoundExchange), royalties for the public digital performance (e.g. webcast) of the Work, subject to the compulsory license created by 17 USC Section 114 of the US Copyright Act (or the equivalent in other jurisdictions).
The above rights may be exercised in all media and formats whether now known or hereafter devised. The above rights include the right to make such modifications as are technically necessary to exercise the rights in other media and formats. All rights not expressly granted by Licensor are hereby reserved.

4. Restrictions. The license granted in Section 3 above is expressly made subject to and limited by the following restrictions:

You may distribute, publicly display, publicly perform, or publicly digitally perform the Work only under the terms of this License, and You must include a copy of, or the Uniform Resource Identifier for, this License with every copy or phonorecord of the Work You distribute, publicly display, publicly perform, or publicly digitally perform. You may not offer or impose any terms on the Work that restrict the terms of this License or the ability of a recipient of the Work to exercise of the rights granted to that recipient under the terms of the License. You may not sublicense the Work. You must keep intact all notices that refer to this License and to the disclaimer of warranties. When You distribute, publicly display, publicly perform, or publicly digitally perform the Work, You may not impose any technological measures on the Work that restrict the ability of a recipient of the Work from You to exercise of the rights granted to that recipient under the terms of the License. This Section 4(a) applies to the Work as incorporated in a Collective Work, but this does not require the Collective Work apart from the Work itself to be made subject to the terms of this License. If You create a Collective Work, upon notice from any Licensor You must, to the extent practicable, remove from the Collective Work any credit as required by Section 4(c), as requested. If You create a Derivative Work, upon notice from any Licensor You must, to the extent practicable, remove from the Derivative Work any credit as required by Section 4(c), as requested.
You may distribute, publicly display, publicly perform, or publicly digitally perform a Derivative Work only under: (i) the terms of this License; (ii) a later version of this License with the same License Elements as this License; (iii) either the Creative Commons (Unported) license or a Creative Commons jurisdiction license (either this or a later license version) that contains the same License Elements as this License (e.g. Attribution-ShareAlike 3.0 (Unported)); (iv) a Creative Commons Compatible License. If you license the Derivative Work under one of the licenses mentioned in (iv), you must comply with the terms of that license. If you license the Derivative Work under the terms of any of the licenses mentioned in (i), (ii) or (iii) (the "Applicable License"), you must comply with the terms of the Applicable License generally and with the following provisions: (I) You must include a copy of, or the Uniform Resource Identifier for, the Applicable License with every copy or phonorecord of each Derivative Work You distribute, publicly display, publicly perform, or publicly digitally perform; (II) You may not offer or impose any terms on the Derivative Works that restrict the terms of the Applicable License or the ability of a recipient of the Work to exercise the rights granted to that recipient under the terms of the Applicable License; (III) You must keep intact all notices that refer to the Applicable License and to the disclaimer of warranties; and, (IV) when You distribute, publicly display, publicly perform, or publicly digitally perform the Work, You may not impose any technological measures on the Derivative Work that restrict the ability of a recipient of the Derivative Work from You to exercise the rights granted to that recipient under the terms of the Applicable License. This Section 4(b) applies to the Derivative Work as incorporated in a Collective Work, but this does not require the Collective Work apart from the Derivative Work itself to be made subject to the terms of the Applicable License.
If You distribute, publicly display, publicly perform, or publicly digitally perform the Work (as defined in Section 1 above) or any Derivative Works (as defined in Section 1 above) or Collective Works (as defined in Section 1 above), You must, unless a request has been made pursuant to Section 4(a), keep intact all copyright notices for the Work and provide, reasonable to the medium or means You are utilizing: (i) the name of the Original Author (or pseudonym, if applicable) if supplied, and/or (ii) if the Original Author and/or Licensor designate another party or parties (e.g. a sponsor institute, publishing entity, journal) for attribution ("Attribution Parties") in Licensor's copyright notice, terms of service or by other reasonable means, the name of such party or parties; the title of the Work if supplied; to the extent reasonably practicable, the Uniform Resource Identifier, if any, that Licensor specifies to be associated with the Work, unless such URI does not refer to the copyright notice or licensing information for the Work; and, consistent with Section 3(b) in the case of a Derivative Work, a credit identifying the use of the Work in the Derivative Work (e.g., "French translation of the Work by Original Author," or "Screenplay based on original Work by Original Author"). The credit required by this Section 4(c) may be implemented in any reasonable manner; provided, however, that in the case of a Derivative Work or Collective Work, at a minimum such credit will appear, if a credit for all contributing authors of the Derivative Work or Collective Work appears, then as part of these credits and in a manner at least as prominent as the credits for the other contributing authors. For the avoidance of doubt, You may only use the credit required by this Section for the purpose of attribution in the manner set out above and, by exercising Your rights under this License, You may not implicitly or explicitly assert or imply any connection with, sponsorship or endorsement by the Original Author, Licensor and/or Attribution Parties, as appropriate, of You or Your use of the Work, without the separate, express prior written permission of the Original Author, Licensor and/or Attribution Parties.
5. Representations, Warranties and Disclaimer

UNLESS OTHERWISE MUTUALLY AGREED TO BY THE PARTIES IN WRITING, LICENSOR OFFERS THE WORK AS-IS AND ONLY TO THE EXTENT OF ANY RIGHTS HELD IN THE LICENSED WORK BY THE LICENSOR. THE LICENSOR MAKES NO REPRESENTATIONS OR WARRANTIES OF ANY KIND CONCERNING THE WORK, EXPRESS, IMPLIED, STATUTORY OR OTHERWISE, INCLUDING, WITHOUT LIMITATION, WARRANTIES OF TITLE, MARKETABILITY, MERCHANTIBILITY, FITNESS FOR A PARTICULAR PURPOSE, NONINFRINGEMENT, OR THE ABSENCE OF LATENT OR OTHER DEFECTS, ACCURACY, OR THE PRESENCE OF ABSENCE OF ERRORS, WHETHER OR NOT DISCOVERABLE. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF IMPLIED WARRANTIES, SO SUCH EXCLUSION MAY NOT APPLY TO YOU.

6. Limitation on Liability. EXCEPT TO THE EXTENT REQUIRED BY APPLICABLE LAW, IN NO EVENT WILL LICENSOR BE LIABLE TO YOU ON ANY LEGAL THEORY FOR ANY SPECIAL, INCIDENTAL, CONSEQUENTIAL, PUNITIVE OR EXEMPLARY DAMAGES ARISING OUT OF THIS LICENSE OR THE USE OF THE WORK, EVEN IF LICENSOR HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

7. Termination

This License and the rights granted hereunder will terminate automatically upon any breach by You of the terms of this License. Individuals or entities who have received Derivative Works or Collective Works from You under this License, however, will not have their licenses terminated provided such individuals or entities remain in full compliance with those licenses. Sections 1, 2, 5, 6, 7, and 8 will survive any termination of this License.
Subject to the above terms and conditions, the license granted here is perpetual (for the duration of the applicable copyright in the Work). Notwithstanding the above, Licensor reserves the right to release the Work under different license terms or to stop distributing the Work at any time; provided, however that any such election will not serve to withdraw this License (or any other license that has been, or is required to be, granted under the terms of this License), and this License will continue in full force and effect unless terminated as stated above.
8. Miscellaneous

Each time You distribute or publicly digitally perform the Work (as defined in Section 1 above) or a Collective Work (as defined in Section 1 above), the Licensor offers to the recipient a license to the Work on the same terms and conditions as the license granted to You under this License.
Each time You distribute or publicly digitally perform a Derivative Work, Licensor offers to the recipient a license to the original Work on the same terms and conditions as the license granted to You under this License.
If any provision of this License is invalid or unenforceable under applicable law, it shall not affect the validity or enforceability of the remainder of the terms of this License, and without further action by the parties to this agreement, such provision shall be reformed to the minimum extent necessary to make such provision valid and enforceable.
No term or provision of this License shall be deemed waived and no breach consented to unless such waiver or consent shall be in writing and signed by the party to be charged with such waiver or consent.
This License constitutes the entire agreement between the parties with respect to the Work licensed here. There are no understandings, agreements or representations with respect to the Work not specified here. Licensor shall not be bound by any additional provisions that may appear in any communication from You. This License may not be modified without the mutual written agreement of the Licensor and You.

