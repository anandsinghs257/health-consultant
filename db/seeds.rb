# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
specialization_areas = SpecializationArea.create([
	{
    name: "Anesthesiologists", 
    description: "These doctors give you drugs to numb your pain or to put you under during surgery, childbirth, or other procedures. They monitor your vital signs while you’re under anesthesia."
  },
  {
    name: "Cardiologists",
    description: "They’re experts on the heart and blood vessels. You might see them for heart failure, a heart attack, high blood pressure, or an irregular heartbeat."
  },
  {
    name: "Colon and Rectal Surgeons",
    description: "You would see these doctors for problems with your small intestine, colon, and bottom. They can treat colon cancer, hemorrhoids, and inflammatory bowel disease. They also can do a colonoscopy and other tests for colon cancer."
  }, 
  {
    name: "Dermatologists",
    description: "Have problems with your skin, hair, nails? Do you have moles, scars, acne, or skin allergies? Dermatologists can help."
  },
  {
    name: "Endocrinologists",
    description: "These are experts on hormones and metabolism. They can treat conditions like diabetes, thyroid problems, infertility, and calcium and bone disorders."
  },
  {
    name: "Family Physicians ",
    description: "They care for the whole family, including children, adults, and the elderly. They do routine checkups and screening tests, give you flu and immunization shots, and manage diabetes and other ongoing medical conditions."
  },
  {
    name: "Gastroenterologists",
    description: "They’re specialists in digestive organs, including the stomach, bowels, pancreas, liver, and gallbladder. You might see them for abdominal pain, ulcers, diarrhea, jaundice, or cancers in your digestive organs."
  },
  {
    name: "Geriatric Medicine Specialists ",
    description: "These doctors care for the elderly. They can treat people in their homes, doctors' offices, nursing homes, assisted-living centers, and hospitals."
  },
  {
    name: "Emergency Medicine Specialists",
    description: "These doctors make life-or-death decisions for sick and injured people, usually in an emergency room. Their job is to save lives and to avoid or lower the chances of disability."
  },
  {
    name: "Immunologist",
    description: "An immunologist is a medical professional who investigates and studies the physiological processes and functions of the body’s immune system. This knowledge is then applied in the diagnosis and treatment of a range of diseases that affect the said system."
  },
  {
    name: "Infectious Disease Specialist",
    description: "Infectious disease specialist (medical doctor) who treats and diagnose complex infections such as HIV or TB. Check out the top 15 deadliest bacterial diseases here."
  },
  {
    name:"Neonatologist",
    description: "A neonatologist is a type of pediatrician who specializes in the medical care of newborn infants, particularly the critically ill premature and full-time newborn infants."
  },
  {
    name:"Nephrologist",
    description: "Nephrologists are trained medical doctors in the diagnosis and treatment of diseases of the kidney and urinary systems, such as inflammation of the kidneys, kidney biopsy, dialysis, chronic kidney disease, or cancer. For kids, there are pediatric nephrologists, who only treat children."
  },
  {
    name:"Neurologist",
    description: "A neurologist is a doctor who specializes in the diagnosis and treatment of the diseases that affect the nervous system (brain, spinal cord, and the neurons). For instance, people who are dealing with problems with their senses may also consult a neurologist because such problems may sometimes be caused by disorders of the system. A Clinical Neurophysiologist is a specialized with neurology who diagnoses any difficulty dealing with the central, peripheral and autonomic nervous system with the aid of electrophysiological tests."

  },
  {
    name:"Neurosurgeon",
    description: "Although they also deal with the diagnosis and treatment of nervous system disorders like what neurologists do, neurosurgeons are licensed to operate and perform surgeries on the patient’s brain."
  },
  {
    name:"Ophthalmologist",
    description: "Unlike optometrists, who are also “eye doctors”, ophthalmologists can perform surgeries in the eyes. And because they can perform operations on the eyes, they are considered as both medical and surgical specialists."
  },
  {
    name:"Plastic Surgeon",
    description: "Plastic surgeons are specialized medical doctors in surgery that improve a person’s outlook such as surgery for a birth defect (e.g., cleft palate), or surgery following an injury or the removal of cancer, such as breast implant surgery after breast removal (mastectomy)."
  },
  {

    name:"Pulmonologist",
    description: "A pulmonologist is a medical professional whose expertise falls on pulmonary (lungs) and other respiratory tract illnesses and diseases. These type of doctors have a broad scope of specialization as they can treat almost everything from asthma to tuberculosis."
  },
  {
    name:"Surgeon",
    description: "A surgeon is a physician trained in performing operations that involve the treatment of injuries, removing infected body parts, and the reconstruction of missing or damaged tissues or organs. Medical doctors who specialize in the surgery of colon/rectum are called as colon and rectal surgeons."
  },
  {
    name:"Urologist",
    description: "Urologists are doctors who specialized in the diagnosis and treatment of disorders that affect the male and female urinary tract. In addition to that, urologists are also knowledgeable in treating patients with prostate cancer, and other diseases that affect sexual health and fertility."
  }
])


doctors = Doctor.create([
  {
    first_name: "Abhishek", 
    last_name: "Jain", 
    address: "Pipliyahana", 
    city: "Indore", 
    state: "Madhya Pradesh", 
    country: "India", 
    latitude:  22.709221, 
    longitude: 75.902046, 
    zipcode: "452016", 
    contact: "7546587487", 
    gender: "Male", 
    age: 40, 
    about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  }, 
  {
    first_name: "Anand", 
    last_name: "Singh", 
    address: "Mangaliya", 
    city: "Indore", 
    state: "Madhya Pradesh", 
    country: "India", 
    latitude:  22.814795, 
    longitude: 75.935097, 
    zipcode: "453771", 
    contact: "7546587445", 
    gender: "Male", 
    age: 49, 
    about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  }, 
  {
    first_name: "Deepesh", 
    last_name: "Singh", 
    address: "Juni Indore", 
    city: "Indore", 
    state: "Madhya Pradesh", 
    country: "India", 
    latitude: 22.711535, 
    longitude: 75.860105, 
    zipcode: "452007", 
    contact: "7546587565", 
    gender: "Male", 
    age: 47, 
    about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  }, 
  {
    first_name: "Jai", 
    last_name: "Sharma", 
    address: "Lokmanya Nagar Indore", 
    city: "Indore", 
    state: "Madhya Pradesh", 
    country: "India", 
    latitude:  22.694077, 
    longitude: 75.846859, 
    zipcode: "452009", 
    contact: "9046587565", 
    gender: "Male", 
    age: 56, 
    about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  }, 
  {
    first_name: "Diksha", 
    last_name: "Shivhare", 
    address: "Khatiwala Tank", 
    city: "Indore", 
    state: "Madhya Pradesh", 
    country: "India", 
    latitude:  22.699621, 
    longitude: 75.859932, 
    zipcode: "452014", 
    contact: "9046587565", 
    gender: "Female", 
    age: 39, 
    about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  }, 
  {
    first_name: "Abhishek", 
    last_name: "Jain", 
    address: "Pipliyahana", 
    city: "Indore", 
    state: "Madhya Pradesh", 
    country: "India", 
    latitude:  22.709221, 
    longitude: 75.902046, 
    zipcode: "452016", 
    contact: "7546587487", 
    gender: "Male", 
    age: 40, 
    about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    first_name: "Ameen", 
    last_name: "Khan", 
    address: "Jaipur Railway Station, Gopalbari, Jaipur, Rajasthan", 
    city: "Jaipur", 
    state: "Rajasthan", 
    country: "India", 
    latitude:  26.92028299999999, 
    longitude: 75.78968099999997, 
    zipcode: "302006", 
    contact: "7546587487", 
    gender: "Male", 
    age: 40, 
    about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    first_name: "Shreya", 
    last_name: "Vishwakarma", 
    address: "Maharastra, Link Road, Adarsh Nagar, Andheri West, Mumbai, Maharashtra, India", 
    city: "Mumbai", 
    state: "Maharastra", 
    country: "India", 
    latitude:  19.143321, 
    longitude: 72.83212279999998, 
    zipcode: "400047", 
    contact: "7546587487", 
    gender: "Male", 
    age: 40, 
    about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    first_name: "Thomas", 
    last_name: "Silva", 
    address: "Shastri Nagar, Bandha Basti, Nahari Ka Naka, Jaipur, Rajasthan, India", 
    city: "Jaipur", 
    state: "Rajasthan", 
    country: "India", 
    latitude:  26.9354294, 
    longitude: 75.80856130000006, 
    zipcode: "302016", 
    contact: "7546587487", 
    gender: "Male", 
    age: 40, 
    about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  }
])


# Doctor.create(first_name: "Ameen",last_name: "Khan", address: "Jaipur Railway Station, Gopalbari, Jaipur, Rajasthan", city: "Jaipur", state: "Rajasthan", country: "India", latitude: 26.92028299999999, longitude: 75.78968099999997,
#     zipcode: "302006", contact: "7546587487", gender: "Male", age: 40, about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")

# Doctor.create(first_name: "Shreya",last_name: "Vishwakarma", address: "Maharastra, Link Road, Adarsh Nagar, Andheri West, Mumbai, Maharashtra, India", city: "Mumbai", state: "Maharastra", country: "India",latitude:  19.143321, 
#     longitude: 72.83212279999998, zipcode: "400047", contact: "7546587487", gender: "Male", age: 40, 
#     about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")

# Doctor.create(first_name: "Thomas", last_name: "Silva", address: "Shastri Nagar, Bandha Basti, Nahari Ka Naka, Jaipur, Rajasthan, India", city: "Jaipur", state: "Rajasthan", country: "India", latitude:  26.9354294, 
#     longitude: 75.80856130000006, zipcode: "302016", contact: "7546587487", gender: "Male",  age: 40, 
#     about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")