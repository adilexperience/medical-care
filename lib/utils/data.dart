import 'package:care/models/disease_model.dart';
import 'package:care/models/doctor_model.dart';
import 'package:care/models/listing_model.dart';
import 'package:care/models/medicine_model.dart';
import 'package:care/models/search_filter_model.dart';

class Data {
  static final String ALL = "all",
      MEDICINES = "medicines",
      DOCTORS = "doctors",
      DISEASES = "diseases";
  int allListing = 0, isMedicine = 1, isDoctor = 2, isDisease = 3;

  List<SearchFilterModel> searchFilters = [
    SearchFilterModel(
      title: "All",
      key: ALL,
    ),
    SearchFilterModel(
      title: "Medicines",
      key: MEDICINES,
    ),
    SearchFilterModel(
      title: "Diseases",
      key: DISEASES,
    ),
    SearchFilterModel(
      title: "Doctors",
      key: DOCTORS,
    ),
  ];

  List<ListingModel> listing = [
    ListingModel(
      isMedicine: false,
      isDisease: true,
      isDoctor: false,
      disease: DiseaseModel(
        title: "Acne",
        description:
            "What is acne? It is caused when blocked skin follicles from a plug caused by oil from glands, bacteria, and dead cells clump together and swell.\n\nCauses of Acne\n1:Excess or high production of oil in the pore.\n2:Buildup of dead skin cells in the pore.\n3:Growth of bacteria in the pore.\n\nReasons of having Acne:\n1:Hormones. An increase in androgens, which are male sex hormones, may lead to acne. These increase in both boys and girls normally during puberty and cause the sebaceous glands to enlarge and make more sebum. Hormonal changes related to pregnancy can also cause acne.\n2:Family history. Researchers believe that you may be more likely to get acne if your parents had acne.\n3:Medications. Certain medications, such as medications that contain hormones, corticosteroids, and lithium, can cause acne.\n4:Age. People of all ages can get acne, but it is more common in teens.\n\nTreatment for Acne\n1:Antibiotics, which are usually used with other topical medications. Benzoyl peroxide, which kills bacteria and may decrease the production of sebum.\n2:Resorcinol, which can help break down blackheads and whiteheads.\n3:Sulfur, which helps break down blackheads and whiteheads.",
      ),
      tags: ["acne", "stress"],
    ),
    ListingModel(
      isMedicine: false,
      isDisease: true,
      isDoctor: false,
      disease: DiseaseModel(
        title: "Arthritis",
        description:
            "Arthritis is joint inflammation that can cause stiffness or pain. Learn more about the symptoms & treatments.\n\nSymptoms of Arthritis\n1:Pain, redness, heat, and swelling in your joints.\n2:Trouble moving around.\n3:Fever\n4:Weight loss.\n5:Breathing problems.\n6:Rash or itch.\n\nCauses of Arthritis\nSome genes have been identified in certain types of arthritis, such as rheumatoid arthritis and juvenile arthritis. People with osteoarthritis may have inherited cartilage weakness.",
      ),
      tags: [
        "arthritis",
        "pain",
        "fever",
        "weight loss",
        "breathing problems",
      ],
    ),
    ListingModel(
      isMedicine: false,
      isDisease: true,
      isDoctor: false,
      disease: DiseaseModel(
        title: "Back Pain",
        description:
            "Back pain is one of the most common medical problems in the United States. It can range from a dull, constant ache to sudden, sharp pain that makes it hard to move.\n\nSymptoms of Back Pain\nIncreasing pain with lifting and bending.\nWorsening pain when resting, sitting, or standing.\nBack pain that comes and goes.\nStiffness in the morning when awakening and lessened back pain with activity.\nPain that radiates away from the back into the buttocks, leg, or hip.\n\nCauses of Back Pain\nSprain: an injury to the ligaments that support the spine, often occurring from twisting or lifting improperly.\nStrain: an injury to a muscle or tendon.\nFractured vertebrae.",
      ),
      tags: ["back pain", "avoid bedrest", "physical therapy", ""],
    ),
    ListingModel(
      isMedicine: false,
      isDisease: true,
      isDoctor: false,
      disease: DiseaseModel(
        title: "Gout",
        description:
            "What is gout? It is a kind of arthritis that causes painful and stiff joints. Gout is caused by the build-up of crystals of uric acid in your joints.\n\nSymptoms of Gout\nHypertension (high blood pressure).\nChronic kidney disease.\nObesity\nDiabetes\nCongestive heart failure.\n",
      ),
      tags: [
        "gout",
        "joints",
        "bursae",
        "kidneys",
        "diabetes",
        "obesity",
      ],
    ),
    ListingModel(
      isMedicine: true,
      isDisease: false,
      isDoctor: false,
      medicine: MedicineModel(
        title: "Gloperba",
        description:
            "Gout medications are available in two types and focus on two different problems. The first type helps reduce the inflammation and pain associated with gout attacks. The second type works to prevent gout complications by lowering the amount of uric acid in your blood.",
        image: "https://www.gloperba.com/images/patient-gloperba.webp",
      ),
      tags: [
        "gloperba",
        "gout",
      ],
    ),
    ListingModel(
      isMedicine: true,
      isDisease: false,
      isDoctor: false,
      medicine: MedicineModel(
        title: "Zyloprim",
        description:
            "Allopurinol is used to treat gout and certain types of kidney stones. It is also used to prevent increased uric acid levels in patients receiving cancer chemotherapy. These patients can have increased uric acid levels due to release of uric acid from the dying cancer cells. Allopurinol works by reducing the amount of uric acid made by the body. Increased uric acid levels can cause gout and kidney problems.",
        image:
            "https://img.medscapestatic.com/pi/features/drugdirectory/octupdate/A_H09960.jpg",
      ),
      tags: [
        "zyloprim",
        "gout",
      ],
    ),
    ListingModel(
      isMedicine: true,
      isDisease: false,
      isDoctor: false,
      medicine: MedicineModel(
        title: "Aleve",
        description:
            "When you're tired of taking and retaking pills every few hours to deal with long-lasting aches and pains, Aleve can help. Just 2 caplets are strong enough to provide all day pain relief.\n\nComes in small, oval caplets\nEach pill has the strength to last 12 hours.\nAlso temporarily reduces fever.",
        image:
            "https://img.medscapestatic.com/pi/features/drugdirectory/octupdate/A_H09960.jpg",
      ),
      tags: [
        "aleve",
        "back pain",
        "arthritis",
      ],
    ),
    ListingModel(
      isMedicine: false,
      isDisease: false,
      isDoctor: true,
      doctors: DoctorModel(
        name: "Dr. Malik Aftab Afzal",
        image:
            "https://d1t78adged64l7.cloudfront.net/images/profile-pics/doctors/1569395694_aftab-afzal.jpg?t=1614065350",
        clinicAddress: "Chicago Heights, Illinois(IL), 60411",
        details:
            "Following are some of the conditions treated by Dr. Malik Aftab Afzal:\nAcne\nAcne Scars\nBenign And Malignant Skin Tumors\nEczema\nHerpes",
        specialities: [
          "acne",
          "gout",
          "gloperba",
          "eczema",
          "herpes",
          "zyloprim",
        ],
      ),
      tags: [
        "acne",
        "aleve",
        "gout",
        "gloperba",
        "eczema",
        "herpes",
        "zyloprim",
        "back pain",
      ],
    ),
    ListingModel(
      isMedicine: false,
      isDisease: false,
      isDoctor: true,
      doctors: DoctorModel(
        name: "Dr. Omar Aziz Rana",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLLjYZAE4p-TmwropHSD6rIzzUOL_7sOD_MA&usqp=CAU",
        clinicAddress: "Middletown, New York(NY), 10940",
        details:
            "Cardiologist, Interventional Cardiologist\nDr. Omar Aziz Rana is a highly skilled interventional cardiologist and has earned a glowing reputation as a very effective doctor, having successfully treated hundreds of heart patients. He is a strong believer in the idea that doctors don’t just treat patients, but are actively involved in a partnership with their patients to improve their health. This means that to truly make progress with a particular illness, both patient and doctor have to work together. Dr Rana is also a pioneer of a number of specialised cardiology techniques and hopes to introduce techniques he learnt during his training in the UK to Pakistan.",
        specialities: [
          "arthritis",
        ],
      ),
      tags: [
        "echocardiography",
        "hypertension",
        "arthritis",
        "gout",
        "zyloprim",
      ],
    ),
    ListingModel(
      isMedicine: false,
      isDisease: false,
      isDoctor: true,
      doctors: DoctorModel(
        name: "Ms. Verda Zahid",
        image:
            "https://images.pexels.com/photos/6847704/pexels-photo-6847704.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        clinicAddress: "Middletown, New York(NY), 10940",
        details:
            "Psychologist, Counselor\nMs. Verda Zahid is a Psychologist with 5 years of experience\n\nQualifications\nMs. Verda Zahid has the following qualifications B.S (Psychology)\nM.S. Clinical Psychology",
        specialities: [
          "Depression",
        ],
      ),
      tags: [
        "depression",
        "early parenting issues",
        "arthritis",
        "gout",
        "gloperba",
        "back pain",
        "zyloprim",
      ],
    ),
  ];
}
