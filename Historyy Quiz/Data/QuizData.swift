import Foundation

struct QuizData {
    static let questions: [Question] = [
        Question(
            category: .ancientHistory,
            question: "In which year was the city of Rome founded?",
            options: ["753 BC", "509 BC", "27 BC", "476 AD"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "According to Roman mythology, Rome was founded by Romulus in 753 BC."
        ),
        Question(
            category: .ancientHistory,
            question: "Who was the first emperor of unified China?",
            options: ["Confucius", "Qin Shi Huang", "Sun Tzu", "Liu Bang"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Qin Shi Huang became the first emperor of a unified China in 221 BC and is known for the Terracotta Army."
        ),
        Question(
            category: .ancientHistory,
            question: "Which ancient wonder of the world still stands today?",
            options: ["Hanging Gardens of Babylon", "Great Pyramid of Giza", "Colossus of Rhodes", "Lighthouse of Alexandria"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Great Pyramid of Giza is the only one of the Seven Wonders of the Ancient World still in existence."
        ),
        Question(
            category: .ancientHistory,
            question: "What was the main language of the Roman Empire?",
            options: ["Greek", "Latin", "Hebrew", "Aramaic"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Latin was the official language of the Roman Empire and influenced many modern European languages."
        ),
        Question(
            category: .ancientHistory,
            question: "Who was the famous female pharaoh of ancient Egypt?",
            options: ["Nefertiti", "Cleopatra", "Hatshepsut", "Ankhesenamun"],
            correctAnswer: 2,
            difficulty: .hard,
            explanation: "Hatshepsut was one of the most successful pharaohs, reigning longer than any other woman of an indigenous Egyptian dynasty."
        ),
        
        Question(
            category: .medievalHistory,
            question: "In what year did the Norman Conquest of England occur?",
            options: ["1066", "1215", "1337", "1453"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "William the Conqueror defeated King Harold II at the Battle of Hastings in 1066."
        ),
        Question(
            category: .medievalHistory,
            question: "What was the primary goal of the Crusades?",
            options: ["Trade routes", "Reclaim the Holy Land", "Spread democracy", "Find gold"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Crusades were military campaigns primarily aimed at reclaiming Jerusalem and the Holy Land from Muslim control."
        ),
        Question(
            category: .medievalHistory,
            question: "Who wrote the 'Divine Comedy'?",
            options: ["Geoffrey Chaucer", "Dante Alighieri", "Petrarch", "Boccaccio"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Dante Alighieri wrote the Divine Comedy in the early 14th century, describing his journey through Hell, Purgatory, and Paradise."
        ),
        Question(
            category: .medievalHistory,
            question: "What disease killed about one-third of Europe's population in the 14th century?",
            options: ["Smallpox", "Cholera", "Black Death", "Influenza"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "The Black Death (bubonic plague) killed an estimated 75-200 million people in Europe between 1347-1351."
        ),
        Question(
            category: .medievalHistory,
            question: "Who led the French army to victory at Orléans in 1429?",
            options: ["Joan of Arc", "Eleanor of Aquitaine", "Marie Antoinette", "Catherine de' Medici"],
            correctAnswer: 0,
            difficulty: .easy,
            explanation: "Joan of Arc, a peasant girl, led the French army to lift the siege of Orléans during the Hundred Years' War."
        ),
        
        Question(
            category: .modernHistory,
            question: "When did the Industrial Revolution begin?",
            options: ["Late 16th century", "Late 17th century", "Late 18th century", "Late 19th century"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "The Industrial Revolution began in Britain in the late 18th century, transforming manufacturing and society."
        ),
        Question(
            category: .modernHistory,
            question: "Which event triggered the start of World War I?",
            options: ["Sinking of Lusitania", "Treaty of Versailles", "Assassination of Archduke Franz Ferdinand", "German invasion of Poland"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "The assassination of Archduke Franz Ferdinand of Austria in Sarajevo on June 28, 1914, triggered WWI."
        ),
        Question(
            category: .modernHistory,
            question: "In which year did the Berlin Wall fall?",
            options: ["1987", "1989", "1991", "1993"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Berlin Wall fell on November 9, 1989, marking a major step toward German reunification."
        ),
        Question(
            category: .modernHistory,
            question: "Who was the first man to walk on the moon?",
            options: ["Buzz Aldrin", "Neil Armstrong", "Yuri Gagarin", "John Glenn"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Neil Armstrong became the first human to walk on the moon on July 20, 1969."
        ),
        Question(
            category: .modernHistory,
            question: "What was the name of the ship that brought the Pilgrims to America in 1620?",
            options: ["Mayflower", "Santa Maria", "Endeavour", "Victory"],
            correctAnswer: 0,
            difficulty: .easy,
            explanation: "The Mayflower transported the first English Pilgrims to the New World in 1620."
        ),
        
        Question(
            category: .worldWars,
            question: "When did World War II begin?",
            options: ["1937", "1939", "1941", "1943"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "World War II officially began on September 1, 1939, when Germany invaded Poland."
        ),
        Question(
            category: .worldWars,
            question: "Which battle is considered the turning point of WWII in Europe?",
            options: ["Battle of Britain", "Battle of Stalingrad", "D-Day", "Battle of the Bulge"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Battle of Stalingrad (1942-1943) marked a major turning point, with the Soviet Union defeating Nazi Germany."
        ),
        Question(
            category: .worldWars,
            question: "What was Operation Overlord?",
            options: ["Pearl Harbor attack", "D-Day invasion", "Bombing of Hiroshima", "Battle of Midway"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Operation Overlord was the codename for the D-Day invasion of Normandy on June 6, 1944."
        ),
        Question(
            category: .worldWars,
            question: "Which country was NOT part of the Allied Powers in WWII?",
            options: ["Soviet Union", "United States", "Italy", "United Kingdom"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "Italy was part of the Axis Powers along with Germany and Japan."
        ),
        Question(
            category: .worldWars,
            question: "What year did World War I end?",
            options: ["1917", "1918", "1919", "1920"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "World War I ended on November 11, 1918, with the signing of the Armistice."
        ),
        
        Question(
            category: .americanHistory,
            question: "When was the Declaration of Independence signed?",
            options: ["July 4, 1776", "July 4, 1777", "July 4, 1787", "July 4, 1791"],
            correctAnswer: 0,
            difficulty: .easy,
            explanation: "The Declaration of Independence was adopted on July 4, 1776, declaring independence from Great Britain."
        ),
        Question(
            category: .americanHistory,
            question: "Who was the first President of the United States?",
            options: ["Thomas Jefferson", "John Adams", "George Washington", "Benjamin Franklin"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "George Washington served as the first President of the United States from 1789 to 1797."
        ),
        Question(
            category: .americanHistory,
            question: "Which amendment abolished slavery in the United States?",
            options: ["12th Amendment", "13th Amendment", "14th Amendment", "15th Amendment"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The 13th Amendment, ratified in 1865, abolished slavery in the United States."
        ),
        Question(
            category: .americanHistory,
            question: "What was the main cause of the American Civil War?",
            options: ["Taxation", "Slavery", "Trade disputes", "Religious freedom"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The primary cause of the Civil War was the conflict over slavery and states' rights."
        ),
        Question(
            category: .americanHistory,
            question: "Who delivered the 'I Have a Dream' speech?",
            options: ["Malcolm X", "Rosa Parks", "Martin Luther King Jr.", "Jesse Jackson"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "Martin Luther King Jr. delivered his famous 'I Have a Dream' speech during the March on Washington in 1963."
        ),
        
        Question(
            category: .europeanHistory,
            question: "Who was the French military leader who became emperor in 1804?",
            options: ["Louis XVI", "Napoleon Bonaparte", "Charles de Gaulle", "Cardinal Richelieu"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Napoleon Bonaparte crowned himself Emperor of France in 1804 and dominated European affairs for decades."
        ),
        Question(
            category: .europeanHistory,
            question: "What event sparked the French Revolution?",
            options: ["Storming of the Bastille", "Reign of Terror", "Napoleon's coup", "Tennis Court Oath"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "The storming of the Bastille prison on July 14, 1789, is considered the start of the French Revolution."
        ),
        Question(
            category: .europeanHistory,
            question: "Which treaty ended World War I?",
            options: ["Treaty of Paris", "Treaty of Vienna", "Treaty of Versailles", "Treaty of Rome"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "The Treaty of Versailles, signed in 1919, officially ended World War I."
        ),
        Question(
            category: .europeanHistory,
            question: "What was the Renaissance?",
            options: ["A war", "A cultural movement", "A disease", "A political party"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Renaissance was a cultural movement that began in Italy in the 14th century, marking the transition from medieval to modern times."
        ),
        Question(
            category: .europeanHistory,
            question: "Who painted the Sistine Chapel ceiling?",
            options: ["Leonardo da Vinci", "Raphael", "Michelangelo", "Donatello"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "Michelangelo painted the famous ceiling of the Sistine Chapel between 1508 and 1512."
        ),
        
        Question(
            category: .ancientHistory,
            question: "What ancient library was located in Egypt?",
            options: ["Library of Athens", "Library of Alexandria", "Library of Rome", "Library of Babylon"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Library of Alexandria was one of the largest and most significant libraries of the ancient world."
        ),
        Question(
            category: .ancientHistory,
            question: "Who was the legendary king of ancient Babylon known for his code of laws?",
            options: ["Nebuchadnezzar", "Hammurabi", "Sargon", "Cyrus"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Hammurabi's Code, created around 1754 BC, is one of the oldest deciphered writings of significant length."
        ),
        Question(
            category: .ancientHistory,
            question: "Which ancient Greek philosopher was sentenced to death by drinking hemlock?",
            options: ["Plato", "Aristotle", "Socrates", "Pythagoras"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "Socrates was executed in 399 BC for allegedly corrupting the youth of Athens."
        ),
        Question(
            category: .ancientHistory,
            question: "What was the name of the ancient trade route connecting China and the Mediterranean?",
            options: ["Spice Road", "Silk Road", "Tea Route", "Golden Path"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Silk Road was an ancient network of trade routes that connected the East and West for centuries."
        ),
        Question(
            category: .ancientHistory,
            question: "Which ancient civilization built Machu Picchu?",
            options: ["Aztec", "Maya", "Inca", "Olmec"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "Machu Picchu was built by the Inca Empire in the 15th century in modern-day Peru."
        ),
        Question(
            category: .ancientHistory,
            question: "Who was the famous Carthaginian general who crossed the Alps with elephants?",
            options: ["Hannibal", "Scipio", "Hamilcar", "Hasdrubal"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "Hannibal famously crossed the Alps in 218 BC during the Second Punic War to attack Rome."
        ),
        Question(
            category: .ancientHistory,
            question: "What ancient structure was built to protect China from invasions?",
            options: ["The Forbidden City", "Great Wall of China", "Terracotta Army", "Ming Tombs"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Great Wall of China was built over many centuries to protect against invasions from the north."
        ),
        Question(
            category: .ancientHistory,
            question: "Which Persian king invaded Greece and was defeated at the Battle of Marathon?",
            options: ["Xerxes", "Darius I", "Cyrus", "Artaxerxes"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "Darius I led the first Persian invasion of Greece, which ended in defeat at Marathon in 490 BC."
        ),
        Question(
            category: .ancientHistory,
            question: "What was the writing system used by ancient Egyptians called?",
            options: ["Cuneiform", "Hieroglyphics", "Sanskrit", "Demotic"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Hieroglyphics were the formal writing system used by ancient Egyptians, consisting of pictorial symbols."
        ),
        Question(
            category: .ancientHistory,
            question: "Who was the last pharaoh of ancient Egypt?",
            options: ["Tutankhamun", "Cleopatra VII", "Ramses II", "Nefertiti"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Cleopatra VII ruled Egypt from 51-30 BC and was the last active pharaoh before Roman annexation."
        ),
        Question(
            category: .ancientHistory,
            question: "In which ancient city were the Hanging Gardens, one of the Seven Wonders?",
            options: ["Athens", "Rome", "Babylon", "Alexandria"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "The Hanging Gardens of Babylon were one of the Seven Wonders of the Ancient World, though their existence is debated."
        ),
        Question(
            category: .ancientHistory,
            question: "Which ancient civilization invented paper?",
            options: ["Egyptians", "Romans", "Chinese", "Greeks"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "Paper was invented in China around 105 AD during the Han Dynasty."
        ),
        Question(
            category: .ancientHistory,
            question: "Who was the ancient Greek physician known as the 'Father of Medicine'?",
            options: ["Hippocrates", "Galen", "Asclepius", "Herophilos"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "Hippocrates is considered the Father of Medicine and established medicine as a profession."
        ),
        Question(
            category: .ancientHistory,
            question: "What was the capital of the Persian Empire under Darius I?",
            options: ["Babylon", "Persepolis", "Susa", "Ecbatana"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "Persepolis was the ceremonial capital of the Achaemenid Empire under Darius I and his successors."
        ),
        Question(
            category: .ancientHistory,
            question: "Which river valley was home to ancient Mesopotamia?",
            options: ["Nile and Red Sea", "Tigris and Euphrates", "Indus and Ganges", "Yellow and Yangtze"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Mesopotamia, often called the 'Cradle of Civilization,' was located between the Tigris and Euphrates rivers."
        ),
        Question(
            category: .ancientHistory,
            question: "Who was the legendary founder of Carthage?",
            options: ["Dido", "Hannibal", "Hamilcar", "Scipio"],
            correctAnswer: 0,
            difficulty: .hard,
            explanation: "According to legend, Queen Dido founded Carthage in 814 BC."
        ),
        Question(
            category: .ancientHistory,
            question: "What was the name of the Spartan military formation?",
            options: ["Legion", "Phalanx", "Cohort", "Century"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The phalanx was a rectangular mass military formation used by ancient Greek armies, perfected by Sparta."
        ),
        Question(
            category: .ancientHistory,
            question: "Which ancient wonder was a lighthouse?",
            options: ["Colossus of Rhodes", "Lighthouse of Alexandria", "Statue of Zeus", "Temple of Artemis"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Lighthouse of Alexandria was one of the Seven Wonders and guided ships for centuries."
        ),
        Question(
            category: .ancientHistory,
            question: "Who was the Persian king defeated by Alexander the Great?",
            options: ["Darius I", "Xerxes", "Darius III", "Cyrus"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "Alexander the Great defeated Darius III in several battles, ending the Persian Empire."
        ),
        Question(
            category: .ancientHistory,
            question: "What was the official religion of the Roman Empire after 380 AD?",
            options: ["Roman Paganism", "Christianity", "Judaism", "Mithraism"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Christianity became the official religion of the Roman Empire under Emperor Theodosius I in 380 AD."
        ),
        
        Question(
            category: .medievalHistory,
            question: "What document did King John of England sign in 1215?",
            options: ["Magna Carta", "Bill of Rights", "Declaration", "Constitution"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "The Magna Carta, signed in 1215, limited royal power and established the principle that everyone is subject to the law."
        ),
        Question(
            category: .medievalHistory,
            question: "Who was the Muslim leader who recaptured Jerusalem during the Crusades?",
            options: ["Saladin", "Suleiman", "Omar", "Khalid"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "Saladin recaptured Jerusalem from the Crusaders in 1187, leading to the Third Crusade."
        ),
        Question(
            category: .medievalHistory,
            question: "What was the name of the war between England and France from 1337 to 1453?",
            options: ["War of the Roses", "Hundred Years' War", "Thirty Years' War", "Seven Years' War"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Hundred Years' War lasted 116 years and was fought between England and France."
        ),
        Question(
            category: .medievalHistory,
            question: "Which medieval empire was ruled by Genghis Khan?",
            options: ["Ottoman Empire", "Mongol Empire", "Byzantine Empire", "Holy Roman Empire"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Genghis Khan founded and led the Mongol Empire, which became the largest contiguous empire in history."
        ),
        Question(
            category: .medievalHistory,
            question: "What was the system of land ownership and duties in medieval Europe called?",
            options: ["Capitalism", "Feudalism", "Communism", "Mercantilism"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Feudalism was the dominant social system in medieval Europe, based on land ownership and reciprocal obligations."
        ),
        Question(
            category: .medievalHistory,
            question: "Who was the English king who fought in the Third Crusade?",
            options: ["Richard I (Lionheart)", "Henry VIII", "Edward I", "William the Conqueror"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "Richard I, known as Richard the Lionheart, led the Third Crusade from 1189-1192."
        ),
        Question(
            category: .medievalHistory,
            question: "What was the capital of the Byzantine Empire?",
            options: ["Rome", "Athens", "Constantinople", "Alexandria"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "Constantinople (modern Istanbul) was the capital of the Byzantine Empire for over 1000 years."
        ),
        Question(
            category: .medievalHistory,
            question: "Which medieval document established trial by jury in England?",
            options: ["Domesday Book", "Magna Carta", "Common Law", "Habeas Corpus"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "The Magna Carta (1215) established many legal principles, including the right to trial by jury."
        ),
        Question(
            category: .medievalHistory,
            question: "What was the religious conflict in medieval Spain between Christians and Muslims called?",
            options: ["Reconquista", "Crusades", "Inquisition", "Reformation"],
            correctAnswer: 0,
            difficulty: .hard,
            explanation: "The Reconquista was the period of approximately 800 years during which Christian kingdoms reconquered the Iberian Peninsula."
        ),
        Question(
            category: .medievalHistory,
            question: "Who was the Viking explorer credited with reaching North America around 1000 AD?",
            options: ["Erik the Red", "Leif Erikson", "Ragnar Lothbrok", "Harald Hardrada"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Leif Erikson is believed to have reached North America around 1000 AD, nearly 500 years before Columbus."
        ),
        Question(
            category: .medievalHistory,
            question: "What was the final battle of the Hundred Years' War?",
            options: ["Battle of Agincourt", "Battle of Crécy", "Battle of Castillon", "Battle of Poitiers"],
            correctAnswer: 2,
            difficulty: .hard,
            explanation: "The Battle of Castillon in 1453 was the final battle of the Hundred Years' War, resulting in French victory."
        ),
        Question(
            category: .medievalHistory,
            question: "What was the official language of education and church in medieval Europe?",
            options: ["Latin", "French", "Greek", "German"],
            correctAnswer: 0,
            difficulty: .easy,
            explanation: "Latin was the language of the Catholic Church and education throughout medieval Europe."
        ),
        Question(
            category: .medievalHistory,
            question: "Who was the famous outlaw of Sherwood Forest in English legend?",
            options: ["Robin Hood", "William Wallace", "Rob Roy", "Dick Turpin"],
            correctAnswer: 0,
            difficulty: .easy,
            explanation: "Robin Hood is the legendary English outlaw who stole from the rich to give to the poor."
        ),
        Question(
            category: .medievalHistory,
            question: "What was the Great Schism of 1054?",
            options: ["Protestant Reformation", "Split between Catholic and Orthodox churches", "Muslim conquest", "Papal conflict"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "The Great Schism of 1054 divided Christianity into Roman Catholic and Eastern Orthodox churches."
        ),
        Question(
            category: .medievalHistory,
            question: "Which medieval king was known as 'the Confessor'?",
            options: ["Edward the Confessor", "Henry the Confessor", "William the Confessor", "Alfred the Confessor"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "Edward the Confessor was King of England from 1042 to 1066 and was later canonized as a saint."
        ),
        Question(
            category: .medievalHistory,
            question: "What was a medieval knight's code of conduct called?",
            options: ["Honor Code", "Chivalry", "Nobility", "Courtesy"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Chivalry was the medieval knightly system emphasizing honor, bravery, and courtesy."
        ),
        Question(
            category: .medievalHistory,
            question: "Which city was the center of the Islamic Golden Age?",
            options: ["Cairo", "Baghdad", "Damascus", "Cordoba"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Baghdad was the center of the Islamic Golden Age, particularly under the Abbasid Caliphate."
        ),
        Question(
            category: .medievalHistory,
            question: "Who wrote 'The Canterbury Tales'?",
            options: ["William Shakespeare", "Geoffrey Chaucer", "Dante Alighieri", "John Milton"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Geoffrey Chaucer wrote The Canterbury Tales in the 14th century, a collection of stories told by pilgrims."
        ),
        Question(
            category: .medievalHistory,
            question: "What was the name of the Viking parliament in Iceland?",
            options: ["Thing", "Althing", "Moot", "Witan"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "The Althing, established in 930 AD, is one of the oldest parliaments in the world."
        ),
        Question(
            category: .medievalHistory,
            question: "Which order of knights was founded to protect pilgrims to Jerusalem?",
            options: ["Knights Templar", "Knights Hospitaller", "Teutonic Knights", "Knights of Malta"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "The Knights Templar were founded around 1119 to protect Christian pilgrims traveling to the Holy Land."
        ),
        
        Question(
            category: .modernHistory,
            question: "Which country was the first to industrialize?",
            options: ["United States", "Germany", "Britain", "France"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "Britain was the first country to undergo industrialization, starting in the late 18th century."
        ),
        Question(
            category: .modernHistory,
            question: "Who invented the telephone in 1876?",
            options: ["Thomas Edison", "Nikola Tesla", "Alexander Graham Bell", "Guglielmo Marconi"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "Alexander Graham Bell patented the telephone in 1876, revolutionizing communication."
        ),
        Question(
            category: .modernHistory,
            question: "What year did the Soviet Union collapse?",
            options: ["1989", "1991", "1993", "1995"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Soviet Union officially dissolved on December 26, 1991, ending the Cold War."
        ),
        Question(
            category: .modernHistory,
            question: "Who was the first woman to win a Nobel Prize?",
            options: ["Marie Curie", "Mother Teresa", "Rosa Parks", "Jane Addams"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "Marie Curie won the Nobel Prize in Physics in 1903, and later in Chemistry in 1911."
        ),
        Question(
            category: .modernHistory,
            question: "What was the name of the ship that carried the Pilgrims to America in 1620?",
            options: ["Mayflower", "Santa Maria", "Endeavour", "Victory"],
            correctAnswer: 0,
            difficulty: .easy,
            explanation: "The Mayflower transported the first English Pilgrims to the New World in 1620."
        ),
        Question(
            category: .modernHistory,
            question: "Who painted the famous artwork 'Guernica'?",
            options: ["Salvador Dali", "Pablo Picasso", "Vincent van Gogh", "Claude Monet"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Pablo Picasso painted Guernica in 1937 in response to the bombing of Guernica during the Spanish Civil War."
        ),
        Question(
            category: .modernHistory,
            question: "What was the first country to grant women the right to vote?",
            options: ["United States", "United Kingdom", "New Zealand", "Sweden"],
            correctAnswer: 2,
            difficulty: .hard,
            explanation: "New Zealand granted women the right to vote in 1893, becoming the first self-governing country to do so."
        ),
        Question(
            category: .modernHistory,
            question: "Who wrote 'The Communist Manifesto'?",
            options: ["Vladimir Lenin", "Joseph Stalin", "Karl Marx and Friedrich Engels", "Leon Trotsky"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "Karl Marx and Friedrich Engels published The Communist Manifesto in 1848."
        ),
        Question(
            category: .modernHistory,
            question: "What was the name of the first satellite launched into space?",
            options: ["Apollo 1", "Sputnik 1", "Explorer 1", "Vanguard 1"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Soviet Union launched Sputnik 1 on October 4, 1957, beginning the Space Age."
        ),
        Question(
            category: .modernHistory,
            question: "Who was the British Prime Minister during most of World War II?",
            options: ["Neville Chamberlain", "Winston Churchill", "Clement Attlee", "Anthony Eden"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Winston Churchill served as Prime Minister from 1940-1945 and again from 1951-1955."
        ),
        Question(
            category: .modernHistory,
            question: "What year did India gain independence from Britain?",
            options: ["1945", "1947", "1950", "1952"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "India gained independence on August 15, 1947, ending nearly 200 years of British rule."
        ),
        Question(
            category: .modernHistory,
            question: "Who was the first Secretary-General of the United Nations?",
            options: ["Dag Hammarskjöld", "Trygve Lie", "U Thant", "Kurt Waldheim"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "Trygve Lie of Norway served as the first UN Secretary-General from 1946 to 1952."
        ),
        Question(
            category: .modernHistory,
            question: "Who was the first person to circumnavigate the globe?",
            options: ["Christopher Columbus", "Ferdinand Magellan", "Vasco da Gama", "James Cook"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Ferdinand Magellan's expedition completed the first circumnavigation of the Earth (1519-1522), though Magellan died during the voyage."
        ),
        Question(
            category: .modernHistory,
            question: "What year did apartheid end in South Africa?",
            options: ["1989", "1991", "1994", "1997"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "Apartheid officially ended in 1994 with the first multiracial democratic elections and Nelson Mandela becoming president."
        ),
        Question(
            category: .modernHistory,
            question: "Who invented the printing press with movable type?",
            options: ["Johannes Gutenberg", "Leonardo da Vinci", "Benjamin Franklin", "William Caxton"],
            correctAnswer: 0,
            difficulty: .easy,
            explanation: "Johannes Gutenberg invented the printing press with movable type around 1440, revolutionizing information distribution."
        ),
        Question(
            category: .modernHistory,
            question: "What was the name of the first successful airplane flight?",
            options: ["Spirit of St. Louis", "Wright Flyer", "Kitty Hawk", "Eagle"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Wright brothers flew the Wright Flyer on December 17, 1903, in Kitty Hawk, North Carolina."
        ),
        Question(
            category: .modernHistory,
            question: "Which Chinese leader initiated the Cultural Revolution?",
            options: ["Mao Zedong", "Deng Xiaoping", "Zhou Enlai", "Chiang Kai-shek"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "Mao Zedong launched the Cultural Revolution in 1966, which lasted until his death in 1976."
        ),
        Question(
            category: .modernHistory,
            question: "What year did the Titanic sink?",
            options: ["1910", "1912", "1914", "1916"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The RMS Titanic sank on April 15, 1912, after hitting an iceberg on its maiden voyage."
        ),
        Question(
            category: .modernHistory,
            question: "Who painted 'The Starry Night'?",
            options: ["Pablo Picasso", "Claude Monet", "Vincent van Gogh", "Leonardo da Vinci"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "Vincent van Gogh painted 'The Starry Night' in 1889 while in an asylum in France."
        ),
        Question(
            category: .modernHistory,
            question: "What was the name of the first human-made satellite to orbit Earth?",
            options: ["Explorer 1", "Sputnik 1", "Vanguard 1", "Luna 1"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Soviet Union launched Sputnik 1 on October 4, 1957, beginning the Space Age."
        ),
        
        Question(
            category: .worldWars,
            question: "What was the codename for the atomic bomb project?",
            options: ["Manhattan Project", "Apollo Project", "Trinity Project", "Overlord Project"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "The Manhattan Project was the codename for the research and development of atomic bombs during WWII."
        ),
        Question(
            category: .worldWars,
            question: "Who was the leader of Nazi Germany during World War II?",
            options: ["Hermann Göring", "Adolf Hitler", "Heinrich Himmler", "Joseph Goebbels"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Adolf Hitler led Nazi Germany from 1934 to 1945 as Führer and Reich Chancellor."
        ),
        Question(
            category: .worldWars,
            question: "What was the bloodiest battle on the Eastern Front in WWII?",
            options: ["Battle of Berlin", "Battle of Stalingrad", "Battle of Kursk", "Siege of Leningrad"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Battle of Stalingrad (1942-1943) was the bloodiest battle in history with nearly 2 million casualties."
        ),
        Question(
            category: .worldWars,
            question: "Which two cities were destroyed by atomic bombs in 1945?",
            options: ["Tokyo and Kyoto", "Hiroshima and Nagasaki", "Osaka and Kobe", "Yokohama and Sapporo"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The United States dropped atomic bombs on Hiroshima (August 6) and Nagasaki (August 9) in 1945."
        ),
        Question(
            category: .worldWars,
            question: "What treaty officially ended World War I?",
            options: ["Treaty of Paris", "Treaty of Versailles", "Treaty of Vienna", "Treaty of Ghent"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Treaty of Versailles was signed on June 28, 1919, officially ending WWI."
        ),
        Question(
            category: .worldWars,
            question: "Which country remained neutral during both World Wars?",
            options: ["Belgium", "Switzerland", "Netherlands", "Denmark"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Switzerland maintained armed neutrality during both World Wars."
        ),
        Question(
            category: .worldWars,
            question: "What was the name of Hitler's autobiography?",
            options: ["Das Kapital", "Mein Kampf", "The Prince", "Thus Spoke Zarathustra"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Hitler wrote 'Mein Kampf' (My Struggle) in 1925 while imprisoned after a failed coup attempt."
        ),
        Question(
            category: .worldWars,
            question: "Who was the Supreme Allied Commander in Europe during WWII?",
            options: ["George Patton", "Douglas MacArthur", "Dwight D. Eisenhower", "Bernard Montgomery"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "Dwight D. Eisenhower served as Supreme Commander of Allied Forces in Europe during WWII."
        ),
        Question(
            category: .worldWars,
            question: "What was the name of the German air force in WWII?",
            options: ["Wehrmacht", "Kriegsmarine", "Luftwaffe", "SS"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "The Luftwaffe was the aerial warfare branch of Nazi Germany's armed forces."
        ),
        Question(
            category: .worldWars,
            question: "Which battle is known as the largest tank battle in history?",
            options: ["Battle of Kursk", "Battle of El Alamein", "Battle of the Bulge", "Battle of Prokhorovka"],
            correctAnswer: 0,
            difficulty: .hard,
            explanation: "The Battle of Kursk in 1943 involved thousands of tanks and is considered the largest tank battle."
        ),
        Question(
            category: .worldWars,
            question: "What year did the United States enter World War II?",
            options: ["1939", "1940", "1941", "1942"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "The US entered WWII on December 8, 1941, the day after the Pearl Harbor attack."
        ),
        Question(
            category: .worldWars,
            question: "What was the codename for the Battle of Normandy?",
            options: ["Operation Barbarossa", "Operation Overlord", "Operation Market Garden", "Operation Torch"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Operation Overlord was the codename for the Battle of Normandy, including D-Day landings."
        ),
        Question(
            category: .worldWars,
            question: "What was the largest naval battle of World War II?",
            options: ["Battle of Midway", "Battle of Leyte Gulf", "Battle of Coral Sea", "Battle of the Atlantic"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "The Battle of Leyte Gulf in 1944 was the largest naval battle in history, involving hundreds of ships."
        ),
        Question(
            category: .worldWars,
            question: "Which country lost the most people in World War II?",
            options: ["Germany", "Soviet Union", "Poland", "China"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Soviet Union lost an estimated 27 million people during World War II, the highest of any nation."
        ),
        Question(
            category: .worldWars,
            question: "What was the German strategy of rapid warfare called?",
            options: ["Blitzkrieg", "Schlieffen Plan", "Total War", "Trench Warfare"],
            correctAnswer: 0,
            difficulty: .easy,
            explanation: "Blitzkrieg, meaning 'lightning war,' was Germany's strategy of fast-moving, coordinated attacks."
        ),
        Question(
            category: .worldWars,
            question: "Who was the British Prime Minister at the start of World War II?",
            options: ["Winston Churchill", "Neville Chamberlain", "Clement Attlee", "Stanley Baldwin"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Neville Chamberlain was PM when war began in 1939, but Winston Churchill replaced him in 1940."
        ),
        Question(
            category: .worldWars,
            question: "What was the main battle tank used by the Soviet Union in WWII?",
            options: ["T-34", "Sherman", "Panzer", "Tiger"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "The T-34 was the Soviet Union's main battle tank and is considered one of the best tanks of WWII."
        ),
        Question(
            category: .worldWars,
            question: "Which battle ended Germany's advance into the Soviet Union?",
            options: ["Battle of Moscow", "Battle of Stalingrad", "Battle of Kursk", "Siege of Leningrad"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Battle of Stalingrad (1942-1943) marked the beginning of Germany's retreat from the Soviet Union."
        ),
        Question(
            category: .worldWars,
            question: "What year did Italy switch sides in World War II?",
            options: ["1941", "1942", "1943", "1944"],
            correctAnswer: 2,
            difficulty: .hard,
            explanation: "Italy switched sides in September 1943 after Mussolini was overthrown and arrested."
        ),
        Question(
            category: .worldWars,
            question: "Which conference decided the post-WWII division of Europe?",
            options: ["Potsdam Conference", "Yalta Conference", "Tehran Conference", "Casablanca Conference"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "The Yalta Conference in February 1945 determined the post-war reorganization of Europe."
        ),
        
        Question(
            category: .americanHistory,
            question: "What was the Louisiana Purchase?",
            options: ["A war", "A land deal", "A treaty", "A constitution"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Louisiana Purchase was a land deal in 1803 where the US acquired territory from France, doubling the nation's size."
        ),
        Question(
            category: .americanHistory,
            question: "Who was the 16th President of the United States?",
            options: ["Andrew Johnson", "Abraham Lincoln", "Ulysses S. Grant", "James Buchanan"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Abraham Lincoln was the 16th President and led the nation through the Civil War."
        ),
        Question(
            category: .americanHistory,
            question: "What year was the Constitution ratified?",
            options: ["1776", "1783", "1787", "1788"],
            correctAnswer: 3,
            difficulty: .hard,
            explanation: "The U.S. Constitution was ratified in 1788, replacing the Articles of Confederation."
        ),
        Question(
            category: .americanHistory,
            question: "Which President resigned due to the Watergate scandal?",
            options: ["Lyndon B. Johnson", "Richard Nixon", "Gerald Ford", "Jimmy Carter"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Richard Nixon resigned on August 9, 1974, following the Watergate scandal."
        ),
        Question(
            category: .americanHistory,
            question: "What was the name of the movement to end racial segregation?",
            options: ["Progressive Movement", "Civil Rights Movement", "Labor Movement", "Suffrage Movement"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Civil Rights Movement of the 1950s-60s fought to end racial discrimination and segregation."
        ),
        Question(
            category: .americanHistory,
            question: "Who wrote the 'Star-Spangled Banner'?",
            options: ["Francis Scott Key", "Thomas Jefferson", "John Adams", "Benjamin Franklin"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "Francis Scott Key wrote the Star-Spangled Banner in 1814 during the War of 1812."
        ),
        Question(
            category: .americanHistory,
            question: "What was the first state to ratify the Constitution?",
            options: ["Virginia", "Pennsylvania", "Delaware", "Massachusetts"],
            correctAnswer: 2,
            difficulty: .hard,
            explanation: "Delaware ratified the Constitution on December 7, 1787, earning the nickname 'The First State.'"
        ),
        Question(
            category: .americanHistory,
            question: "Who was the leader of the Confederate States during the Civil War?",
            options: ["Robert E. Lee", "Stonewall Jackson", "Jefferson Davis", "P.G.T. Beauregard"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "Jefferson Davis served as the President of the Confederate States from 1861 to 1865."
        ),
        Question(
            category: .americanHistory,
            question: "What year did women gain the right to vote in the US?",
            options: ["1918", "1920", "1922", "1925"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The 19th Amendment, granting women the right to vote, was ratified in 1920."
        ),
        Question(
            category: .americanHistory,
            question: "Which purchase added Alaska to the United States?",
            options: ["Alaska Purchase", "Seward's Folly", "Russian Sale", "Northern Acquisition"],
            correctAnswer: 0,
            difficulty: .easy,
            explanation: "The Alaska Purchase from Russia in 1867 was negotiated by Secretary of State William Seward."
        ),
        Question(
            category: .americanHistory,
            question: "Who was the first Chief Justice of the Supreme Court?",
            options: ["John Marshall", "John Jay", "Roger Taney", "Oliver Ellsworth"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "John Jay served as the first Chief Justice from 1789 to 1795."
        ),
        Question(
            category: .americanHistory,
            question: "What was the name of the economic crisis that began in 1929?",
            options: ["The Panic", "The Great Depression", "The Recession", "Black Monday"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Great Depression began with the stock market crash of 1929 and lasted throughout the 1930s."
        ),
        Question(
            category: .americanHistory,
            question: "Who was the youngest President of the United States?",
            options: ["John F. Kennedy", "Theodore Roosevelt", "Bill Clinton", "Barack Obama"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "Theodore Roosevelt became president at age 42 after McKinley's assassination in 1901."
        ),
        Question(
            category: .americanHistory,
            question: "What was the main cause of the War of 1812?",
            options: ["Slavery", "British impressment of American sailors", "Land disputes", "Trade restrictions"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "British impressment of American sailors and trade restrictions were major causes of the War of 1812."
        ),
        Question(
            category: .americanHistory,
            question: "Who wrote 'Common Sense', advocating American independence?",
            options: ["Thomas Jefferson", "Benjamin Franklin", "Thomas Paine", "John Adams"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "Thomas Paine wrote 'Common Sense' in 1776, a pamphlet that advocated independence from Britain."
        ),
        Question(
            category: .americanHistory,
            question: "What was the Underground Railroad?",
            options: ["A subway system", "A network for escaped slaves", "A train company", "A mining operation"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "The Underground Railroad was a network of secret routes and safe houses used by enslaved African Americans to escape to free states."
        ),
        Question(
            category: .americanHistory,
            question: "Which President gave the Gettysburg Address?",
            options: ["George Washington", "Thomas Jefferson", "Abraham Lincoln", "Andrew Jackson"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "Abraham Lincoln delivered the Gettysburg Address on November 19, 1863, during the Civil War."
        ),
        Question(
            category: .americanHistory,
            question: "What was the name of the first permanent English settlement in America?",
            options: ["Plymouth", "Jamestown", "Roanoke", "Boston"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Jamestown, Virginia, established in 1607, was the first permanent English settlement in America."
        ),
        Question(
            category: .americanHistory,
            question: "Who was the only President to serve more than two terms?",
            options: ["Theodore Roosevelt", "Franklin D. Roosevelt", "Harry Truman", "Dwight Eisenhower"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Franklin D. Roosevelt served four terms from 1933 until his death in 1945."
        ),
        Question(
            category: .americanHistory,
            question: "What was the Teapot Dome scandal about?",
            options: ["Tax evasion", "Oil reserves bribery", "Electoral fraud", "Spy ring"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "The Teapot Dome scandal involved bribery over oil reserves during the Harding administration in the 1920s."
        ),
        
        Question(
            category: .europeanHistory,
            question: "Who was the 'Iron Chancellor' of Germany?",
            options: ["Adolf Hitler", "Otto von Bismarck", "Wilhelm II", "Helmut Kohl"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "Otto von Bismarck, known as the 'Iron Chancellor,' unified Germany and served as its first chancellor."
        ),
        Question(
            category: .europeanHistory,
            question: "Which European country was ruled by the Romanov dynasty?",
            options: ["Austria", "Prussia", "Russia", "Poland"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "The Romanov dynasty ruled Russia from 1613 until the Russian Revolution in 1917."
        ),
        Question(
            category: .europeanHistory,
            question: "What was the name of the revolution that overthrew the Russian monarchy in 1917?",
            options: ["French Revolution", "Bolshevik Revolution", "October Revolution", "February Revolution"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "The October Revolution (also called the Bolshevik Revolution) overthrew the Russian Provisional Government."
        ),
        Question(
            category: .europeanHistory,
            question: "Who was the 'Sun King' of France?",
            options: ["Louis XIV", "Louis XVI", "Napoleon III", "Henry IV"],
            correctAnswer: 0,
            difficulty: .medium,
            explanation: "Louis XIV, known as the Sun King, ruled France for 72 years from 1643 to 1715."
        ),
        Question(
            category: .europeanHistory,
            question: "What year did the European Union officially form?",
            options: ["1957", "1973", "1993", "2002"],
            correctAnswer: 2,
            difficulty: .hard,
            explanation: "The European Union was officially established by the Maastricht Treaty in 1993."
        ),
        Question(
            category: .europeanHistory,
            question: "Who was the Queen of England during the Spanish Armada?",
            options: ["Mary I", "Elizabeth I", "Victoria", "Anne"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Queen Elizabeth I ruled England during the defeat of the Spanish Armada in 1588."
        ),
        Question(
            category: .europeanHistory,
            question: "What was the Spanish Inquisition?",
            options: ["A war", "A religious tribunal", "A trade agreement", "A royal court"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Spanish Inquisition was a tribunal established in 1478 to maintain Catholic orthodoxy."
        ),
        Question(
            category: .europeanHistory,
            question: "Who was the British monarch during most of the 19th century?",
            options: ["Elizabeth I", "Queen Anne", "Queen Victoria", "George III"],
            correctAnswer: 2,
            difficulty: .easy,
            explanation: "Queen Victoria reigned from 1837 to 1901, giving her name to the Victorian era."
        ),
        Question(
            category: .europeanHistory,
            question: "What Italian city-state was ruled by the Medici family?",
            options: ["Venice", "Rome", "Florence", "Milan"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "The Medici family ruled Florence and were major patrons of the Renaissance."
        ),
        Question(
            category: .europeanHistory,
            question: "Who started the Protestant Reformation in 1517?",
            options: ["John Calvin", "Martin Luther", "Henry VIII", "John Knox"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Martin Luther sparked the Reformation by posting his 95 Theses in Wittenberg in 1517."
        ),
        Question(
            category: .europeanHistory,
            question: "What was the name of the alliance formed against Napoleon?",
            options: ["Triple Alliance", "Coalition", "Holy Alliance", "Entente"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "Multiple coalitions of European powers formed to fight against Napoleonic France."
        ),
        Question(
            category: .europeanHistory,
            question: "Which country did NOT exist before World War I?",
            options: ["Yugoslavia", "Austria-Hungary", "Ottoman Empire", "Russian Empire"],
            correctAnswer: 0,
            difficulty: .hard,
            explanation: "Yugoslavia was created after WWI in 1918, formed from territories of Austria-Hungary and Serbia."
        ),
        Question(
            category: .europeanHistory,
            question: "Who was the first chancellor of unified Germany in 1990?",
            options: ["Willy Brandt", "Helmut Schmidt", "Helmut Kohl", "Konrad Adenauer"],
            correctAnswer: 2,
            difficulty: .hard,
            explanation: "Helmut Kohl served as Chancellor during German reunification and became the first chancellor of unified Germany."
        ),
        Question(
            category: .europeanHistory,
            question: "What year did the Euro currency officially launch?",
            options: ["1995", "1999", "2002", "2004"],
            correctAnswer: 2,
            difficulty: .medium,
            explanation: "The Euro was introduced as a physical currency on January 1, 2002, though it existed electronically since 1999."
        ),
        Question(
            category: .europeanHistory,
            question: "Who was the last Tsar of Russia?",
            options: ["Alexander III", "Nicholas II", "Peter III", "Ivan VI"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "Nicholas II was the last Tsar of Russia, ruling from 1894 until his abdication in 1917."
        ),
        Question(
            category: .europeanHistory,
            question: "What was the Austro-Hungarian Empire also known as?",
            options: ["The Dual Monarchy", "The Triple Alliance", "The Habsburg Empire", "The Vienna Empire"],
            correctAnswer: 0,
            difficulty: .hard,
            explanation: "The Austro-Hungarian Empire was known as the Dual Monarchy, consisting of Austria and Hungary."
        ),
        Question(
            category: .europeanHistory,
            question: "Which battle ended Napoleon's rule of France?",
            options: ["Battle of Austerlitz", "Battle of Waterloo", "Battle of Leipzig", "Battle of Trafalgar"],
            correctAnswer: 1,
            difficulty: .easy,
            explanation: "Napoleon was defeated at the Battle of Waterloo in 1815, ending his rule and the Napoleonic Wars."
        ),
        Question(
            category: .europeanHistory,
            question: "What was the Glorious Revolution in England?",
            options: ["A war", "A peaceful transition of power", "An industrial change", "A religious reform"],
            correctAnswer: 1,
            difficulty: .medium,
            explanation: "The Glorious Revolution of 1688 was the peaceful overthrow of King James II by William of Orange."
        ),
        Question(
            category: .europeanHistory,
            question: "Who was the 'Iron Lady' of British politics?",
            options: ["Margaret Thatcher", "Theresa May", "Queen Victoria", "Elizabeth II"],
            correctAnswer: 0,
            difficulty: .easy,
            explanation: "Margaret Thatcher, Britain's first female Prime Minister, was known as the 'Iron Lady' for her uncompromising politics."
        ),
        Question(
            category: .europeanHistory,
            question: "What was the Congress of Vienna about?",
            options: ["Starting WWI", "Reorganizing Europe after Napoleon", "Creating the EU", "Ending the Cold War"],
            correctAnswer: 1,
            difficulty: .hard,
            explanation: "The Congress of Vienna (1814-1815) reorganized Europe after Napoleon's defeat to restore stability."
        ),
    ]
}

