class Rasp {
  final String image;
  final String title;
  final String subTitle;
  final String backExercises;
  final String bodyPart;
  final String equipment;
  final String difficulty;
  final String step1;
  final String step2;
  final String step3;

  Rasp(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.backExercises,
      required this.bodyPart,
      required this.equipment,
      required this.difficulty,
      required this.step1,
      required this.step2,
      required this.step3});
}

List<Rasp> listTraining = [
  Rasp(
    image: 'https://i.ibb.co/xHSbKCK/exercise1.png',
    title: 'Supermans',
    subTitle:
        'Who doesnt want to think they have super powers?  Great stretch as well when you picture trying to touch the opposing walls with your fingers and toes.',
    backExercises: 'Back Exercises',
    bodyPart: 'Back, Butt/Hips, Shoulders',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Lie prone (on your stomach) on a mat with your legs extended, ankles slightly plantarflexed (toes pointing away from your shins), arms extended overhead with palms facing each other. Relax your head to align it with your spine.''',
    step2:
        '''Upward Phase: Exhale, contract your abdominal and core muscles to stabilize your spine and slowly extend both hips (raise both legs) a few inches off the floor while simultaneously raising both arms a few inches off the floor. Keep both legs and arms extended and avoiding any rotation in each. Maintain your head and torso position, avoiding any arching in your back or raising of your head. Hold this position briefly.''',
    step3:
        '''Downward Phase: Gently inhale and lower your legs and arms back towards your starting position without any movement in your low back or hips.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/9n6ySVV/exercise2.png',
    title: 'Push-Up',
    subTitle:
        'The Push-up is an oldie but goodie.  You can modify intensity by changing hand placement.',
    backExercises: 'Arm Exercises',
    bodyPart: 'Arms, Chest, Shoulders',
    equipment: 'No Equipment',
    difficulty: 'Intermediate',
    step1:
        '''Starting Position: Kneel on an exercise mat or floor and bring your feet together behind you.''',
    step2:
        '''Slowly bend forward to place your palms flat on the mat, positioning your hands shoulder-width apart with your fingers facing forward or turned slightly inward. Slowly shift your weight forward until your shoulders are positioned directly over your hands. Reposition your hands as needed to allow full extension of your body without any bend at the hips or knees. Stiffen your torso by contracting your core/abdominal muscles ("bracing"), your glute and quadriceps muscles and align your head with your spine. Place your feet together with your ankles dorsiflexed (toes pointed towards your shins).''',
    step3:
        '''Downward Phase: Slowly lower your body towards the floor while maintaining a rigid torso and head aligned with your spine. Do not allow your low back to sag or your hips to hike upwards during this downward phase. Continue to lower yourself until your chest or chin touch the mat/floor. Allow your elbows to flare outwards during the lowering phase. 
    Upward Phase: Press upwards through your arms while maintaining a rigid torso and head aligned with your spine. For extra strength think about pushing the floor away from you. Do not allow your low back to sag or your hips to hike upwards. Continue pressing until the arms are fully extended at the elbows.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/KzDSbRC/exercise3.png',
    title: 'Contralateral Limb Raises',
    subTitle:
        'Don’t let the name scare you – this is great for toning those troubling upper body areas.',
    backExercises: 'Arm Exercises',
    bodyPart: 'Back, Butt/Hips, Shoulders',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        'Starting Position: Lie prone (on your stomach) on a mat with your legs extended, ankles slightly plantarflexed (toes pointing away from your shins), arms extended overhead with palms facing each other. Relax your head to align it with your spine.',
    step2:
        'Upward Phase: Exhale, contract your abdominal/core muscles to stabilize your spine and slowly raise one arm a few inches off the floor keeping your arm extended and avoiding any rotation in your arm. Maintain your head and torso position, avoiding any arching in your back or raising of your head. Hold this position briefly.',
    step3:
        '''Downward Phase: Gently inhale and lower your arm back towards your starting position without any movement in your low back or hips.
    
    Exercise Variation (1): From your starting position, contract your abdominal and core muscles to stabilize your spine and slowly extend one hip (raise one leg) a few inches off the floor keeping your leg extended, ankle plantarflexed (toes pointing away from your shins) and avoiding any rotation in your leg. Maintain your head and torso position, avoiding any arching in your back or raising of your head. Hold this position briefly before returning to your starting position.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/rpXzkrY/exercise4.png',
    title: 'Bent Knee Push-up',
    subTitle:
        'A great starting option if you struggle with the correct form using a full Push-Up.',
    backExercises: 'Arm Exercises',
    bodyPart: 'Arms, Chest, Shoulders',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Kneel on an exercise mat or floor and bring your feet together behind you.''',
    step2:
        '''Slowly bend forward to place your palms flat on the mat, positioning your hands shoulder-width apart with your fingers facing forward. Slowly shift your weight forward until your shoulders are positioned directly over your hands. Reposition your hands as needed to allow full extension of your body from the knees without any bend at the hips. Stiffen your torso by contracting your core and abdominal muscles ("bracing").''',
    step3:
        '''Downward Phase: Slowly lower your body towards the floor while maintaining a rigid torso and head aligned with your spine. Do not allow your low back to sag or your hips to hike upwards during this downward phase. Continue to lower yourself until your chest or chin touch the mat or floor. Your elbows should remain close to the sides of your body or flare outwards slightly.
    
    Upward Phase: Press upwards through your arms while maintaining a rigid torso and head aligned with your spine. Do not allow your low back to sag or your hips to hike upwards. Continue pressing until the arms are fully extended at the elbows.
    Push-ups place stress upon the wrist joints. To alleviate some of this stress you may opt to use dumbbells and grip the handles rather than place your hands on the floor. If your are pressing from an elevation such as a dumbbell, you do not need to lower your chest or chin to the floor, but rather lower yourself until your chest or chin are level with the dumbbell handles.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/m6K5qFF/exercise5.png',
    title: 'Bent-Knee Sit-up / Crunches',
    subTitle:
        'Most people don’t know how to perform a proper sit-up/crunch – that is until now.  Core Power!',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Lie in a supine (on your back) position on a mat with your knees bent, feet flat on the floor and heels 12 - 18" from your tailbone.''',
    step2:
        '''Place your hands behind your head, squeezing your scapulae (shoulder blades) together and pulling your elbows back without arching your low back. This elbow position should be maintained throughout the exercise. Align your head with your spine, but allow it to move into slight flexion (moving the chin towards the chest) during the upward phase of the exercise.''',
    step3:
        '''Upward Phase: Exhale, contract your abdominal and core muscles and flex your chin slightly towards your chest while slowly curling your torso towards your thighs. The movement should focus on pulling your rib cage towards your pelvis (the neck stays relaxed while the chin is tucked towards the neck). Your feet, tailbone and lower back should remain in contact with the mat at all times. Continue curling up until your upper back is lifted off the mat. Hold this position briefly.
    
    Downward Phase: Gently inhale and slowly uncurl (lower) your torso back towards the mat in a controlled fashion keeping your feet, tailbone and low back in contact with the mat.
    Proper form is important for this exercise to prevent excessive stress on your low back. Individuals usually perform this movement too rapidly and recruit the hip flexors to assist with the upward phase. This technique tilts the pelvis anteriorly, increasing the stress on the low back and should be avoided. The abdominals connect the rib cage to the pelvis so the movement should focus on bringing these two body parts closer together while keeping the neck and shoulders relaxed.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/dppC1h8/exercise6.png',
    title: 'Push-up with Single-leg Raise',
    subTitle:
        'A great progression from a regular Push-Up but remember to keep proper form.',
    backExercises: 'Arm Exercises',
    bodyPart: 'Arms, Butt/Hips, Chest, Full Body/Integrated, Shoulders',
    equipment: 'No Equipment',
    difficulty: 'Advanced',
    step1:
        '''Starting Position: Kneel on an exercise mat or floor and bring your feet together behind you.''',
    step2:
        '''Slowly bend forward to place your palms flat on the mat, positioning your hands shoulder-width apart with your fingers facing forward. Slowly shift your weight forward until your shoulders are positioned directly over your hands. Reposition your hands as needed to allow full extension of your body without any bend at the hips or knees. Stiffen your torso by contracting your core and abdominal muscles ("bracing") and align your head with your spine. Place your feet together with your ankles dorsiflexed (toes pointed towards your shins).''',
    step3:
        '''Downward Phase: Slowly lower your body towards the floor while maintaining a rigid torso and head aligned with your spine. Do not allow your low back to sag or your hips to hike upwards during this downward phase, contract your glutes (butt) and quadriceps (thigh) muscles to create stability for your core. Continue to lower yourself until your chest or chin touch the mat or floor. Your elbows should remain close to the sides of your body or be allowed to flare outwards slightly.
    
    Upward Phase: Press upwards through your arms while maintaining a rigid torso and head aligned with your spine. As your press upwards, extend your left hip to lift your left foot off the floor, keeping the knee extended. Attempt to avoid rotation in your hip as you raise the left leg off the floor. Do not allow your low back to sag or your hips to hike upwards. Continue pressing until the arms are fully extended at the elbows and your left leg is extended off the floor. Hold this position briefly before returning to your starting position. Repeat with your opposite leg''',
  ),
  Rasp(
    image: 'https://i.ibb.co/FByHWRG/exercise7.png',
    title: 'Front Plank',
    subTitle:
        'This is harder than it looks!  Your back and abs will love you. ',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs, Back',
    equipment: 'No Equipment',
    difficulty: 'Intermediate',
    step1:
        '''Starting Position: Lie prone (on your stomach) on an exercise mat or floor with your elbows close to your sides and directly under your shoulders, palms down and hands facing forward. Contract your quadriceps to extend your legs and dorsiflex your ankles (pull toes towards your shins). Contract your core and abdominal muscles to stiffen your torso.''',
    step2:
        '''Upward Phase. Slowly lift your entire torso off the floor or mat, maintaining a stiff torso and legs. Avoid any arching (sagging) in your low back, hiking (upwards) in your hips or bending in the knees. Avoid shrugging your shoulder and keep your shoulders positioned directly over your elbows with your palms facing down. Continue to breath while holding this position for a specified time (5+ seconds).''',
    step3:
        '''Downward Phase: While maintaining a stiff torso and extended knees, gently lower your body back towards the mat or floor before relaxing.
    If you experience any pain in the low back with this movement, stop the exercise immediately and consult with your doctor.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/RztNgrZ/exercise8.png',
    title: 'Side Plank with Bent Knee',
    subTitle:
        'Great way to add in hips work without the need for any equipment other than your own body weight.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs, Butt/Hips',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Lie on your right side on an exercise mat with your left leg lying directly over your right leg and bend your knees to a comfortable position. Raise your upper body to support yourself on your right arm, your right elbow should bend to 90 degrees and be positioned directly under your shoulder. Align your head with your spine and keep your hips and lower knee in contact with the exercise mat.''',
    step2:
        '''Upward Phase: Exhale, gently contract your abdominal / core muscles to stiffen your spine and lift your hips off the mat, but keeping contact with your knee, and head aligned with your spine.''',
    step3:
        '''Lowering Phase: Inhale and gently return yourself to your starting position.
    
    Exercise Variation: You can increase the exercise intensity by increasing the length of time you are in the raised position.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/ckKNb6t/exercise9.png',
    title: 'Supine Reverse Crunches',
    subTitle:
        'Advanced crunch that targets the entire core region.  If you feel pain in your back – STOP.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs',
    equipment: 'No Equipment',
    difficulty: 'Intermediate',
    step1:
        '''Starting Position: Lie in a supine (on your back) position on a mat with your knees bent, feet flat on the floor and arms spread out to your sides with your palms facing down. Gently exhale, stiffen your torso by contracting your abdominal/core muscles ("bracing") and slowly lift your feet off the floor, raising your knees directly above your hips while maintaining a 90 degree bend in the knees. Hold this position and breathe normally. Use your arms as a balance support.''',
    step2:
        '''Upward Phase: Exhale, contract your abdominal, core and hip flexor muscles and slowly raise your hips off the mat, rolling your spine up as if trying to bring your knees towards your head (your hips and pelvis should move towards your rib cage). Avoid any change in the angle of your knees during the roll-up. Use your arms and hands to assist with maintaining your balance and continue to curl-up until your spine cannot roll any further. Hold this position briefly.''',
    step3:
        '''Downward Phase: Gently inhale and lower your spine back towards the mat in a controlled fashion, moving your upper thighs backwards until they are positioned directly over your hips. Continue rolling out until your spine and pelvis (hips) contact the mat and your knees are positioned directly over the your hips with a 90 degree bend with your lower leg.
    Proper form is important when performing this exercise to prevent excessive stresses on your low back. When returning to your starting position during the repetitions, control your leg movement ensuring that your knees don't move past your hips, but instead return to a position directly above your hips. Since the abdominals connect the rib cage to the pelvis, the emphasis of the movement should be on pulling your pelvis upwards towards your rib cage.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/nC3WtGT/exercise10.png',
    title: 'Cobra',
    subTitle:
        'This is my “good morning, time to wake up” exercise – great way to get ready for a busy day.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs, Back',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Lie prone (on your stomach) on an exercise mat or floor with your hands by your sides, positioned directly under your shoulders and hands facing forward. Extend your legs and plantar flex your ankles (toes point away from body).''',
    step2:
        '''Upward Phase: Gently exhale and press your hips into the mat or floor and pull your chest away from the ground while keeping your hips stable. This will arch your low back and stretch the muscles in your chest and abdominal region. Hold this position for 15 - 30 seconds''',
    step3:
        '''Downward Phase: Gently relax and lower your upper body to rest back upon the mat or floor.
    
    If you experience any pain in the low back with this movement, stop the exercise immediately and consult with your doctor.
    As the length of arms differ, individuals may often lift their hips off the mat or floor as they fully extend their arms. In this case, limit the extension in your arms to keep the hips on the mat.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/PmWKSZC/exercise11.png',
    title: 'Squat Jumps',
    subTitle: 'A bit of heart rate work while working on total body movement.',
    backExercises: 'Butt & Hip Exercises',
    bodyPart: 'Butt/Hips, Legs - Thighs',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Stand with your feet feet hip-width apart, arms by your sides, depressing and retracting your scapulae (pull shoulders down and back) without arching your low back, and "brace" (engage your abdominal / core muscles) to stiffen your spine.''',
    step2:
        '''Downward Phase: Begin your downward phase by first shifting your hips backwards then slowly moving downwards to create a hinge-like movement at your knees. Continue to lower yourself until your feel your heels about to lift off the floor. Try to maintain a flat back by bending forward at the hips, keep your head facing forward and position to your arms where comfortable or where they offer the greatest degree of balance support.''',
    step3:
        '''Jumping Movement: With ONLY a very brief pause at the bottom of your downward phase, explode upwards through your lower extremity, achieving triple extension (pushing and extending your ankles, knees and hips simultaneously). As you jump into the air, keep your feet level with each other and parallel with the floor.
    
    Landing: The most important components of the landing phase are correct foot position and avoiding excessive forward movement in your lower extremity which places additional stresses upon your knees.
    
    Attempt to land softly and quietly on the mid-foot, rolling backwards quickly towards the heels. Always push your hips backwards and drop them downwards to absorb the impacting forces associated with jumping. Avoid locking out your knees or quads on your landing as this may lead to potential knee injuries''',
  ),
  Rasp(
    image: 'https://i.ibb.co/hyQrcn0/exercise12.png',
    title: 'Forward Lunge',
    subTitle:
        'If I could only do one leg exercise for the rest of my life, a lunge would be my choice.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs, Butt/Hips, Legs - Thighs',
    equipment: 'No Equipment',
    difficulty: 'Intermediate',
    step1:
        '''Starting Position: Stand with your feet together. Depress and retract your scapulae (pull your shoulders down and back) without arching your low back, and "brace" (engage your abdominal/core muscles) to stiffen your spine.''',
    step2:
        '''In preparation to step forward, slowly lift one foot off the floor, stabilizing your body on the stance (supporting) leg. Avoid any sideways tilting or swaying in your upper body and try not to move the stance (supporting) foot. Hold this position momentarily before stepping forward. The raised (swing) leg should initiate contact with a heel strike first, slowly transferring your body weight into the leading (forward) foot placed firmly on the floor. As you load into this leg, avoid any sideways tilting or swaying in your upper body and try not to move the stance (supporting) foot.''',
    step3:
        '''As you lunge forward, focus more on dropping your hips towards the floor rather than driving your hips forward. This will help control the amount of forward movement of your shinbone (forward tibial translation) over your foot. Continue lowering your body to a comfortable position or until your front thigh becomes parallel with the floor and your tibia (shinbone) is in a slight forward lean. While lunging, simultaneously, bend forward at your hips, maintaining a flat back.
    
    Firmly push off with your front leg, activating both your quads and glutes (thighs and butt muscles) to return to your upright, starting position.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/6vXf5Dw/exercise13.png',
    title: 'Forward Lunge with Arm Drivers',
    subTitle:
        'Start with the regular lunge and work up to this advanced exercise hitting some core areas.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs, Butt/Hips, Legs - Thighs',
    equipment: 'No Equipment',
    difficulty: 'Advanced',
    step1:
        '''Starting Position: Stand with your feet together and your arms raised in front to shoulder height, with your elbows fully extended. Depress and retract your scapulae (pull your shoulders down and back) without arching your low back, and "brace" (engage your abdominal / core muscles) to stiffen your spine.''',
    step2:
        '''In preparation to step forward, slowly lift one foot off the floor, stabilizing your body on the stance (supporting) leg. Avoid any sideways tilting or swaying in your upper body and try not to move the stance (supporting) foot. Hold this position momentarily before stepping forward. The raised (swing) leg should initiate contact with a heel strike first, slowly transferring your body weight into the leading (forward) foot placed firmly on the floor. As you load into this leg, avoid any sideways tilting or swaying in your upper body and try not to move the stance (supporting) foot.''',
    step3:
        '''As you lunge forward, focus more on dropping your hips towards the floor rather than driving your hips forward. This will help control the amount of forward movement of your shinbone (forward tibial translation) over your foot. Continue lowering your body to a comfortable position or until your front thigh becomes parallel with the floor and your tibia (shinbone) is in a slight forward lean. While lunging, simultaneously, bend forward at your hips, maintaining a flat back and drive your extended arms towards the floor in front of you (hands should reach somewhere below your knees). This increases the load on your gluteal muscle group.
    
    Firmly push off with your front leg, activating both your quads and glutes (thighs and butt muscles) to return to your upright, starting position.
    It is suggested, you first learn how to perform single leg-stands on the ground and forward lunges before progressing to using arm drivers.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/fHgF56N/exercise14.png',
    title: 'Glute Activation Lunges',
    subTitle: 'Often missed, this Gluteus workout is the MAXIMUS.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs, Butt/Hips, Legs - Thighs',
    equipment: 'No Equipment',
    difficulty: 'Advanced',
    step1:
        '''Starting Position: Stand with your feet together and your arms raised in front to shoulder height, with your elbows fully extended. Depress and retract your scapulae (pull your shoulders down and back) without arching your low back, and "brace" (engage your abdominal/core muscles) to stiffen your spine.''',
    step2:
        '''From the same starting position, step out sideways with the right foot (both feet remain pointed forward) to the 3 o'clock position. Once the foot is firmly placed on the floor, begin to bend at the hips, pushing them backwards while simultaneously shifting your weight over that same foot. Continue shifting your weight until your tibia (shinbone) is vertical to the floor and your knee is aligned directly over the second toe of that foot. Your left leg should be near, or at full extension while keeping the right foot flat. The heels of both feet should stay flat on the floor.''',
    step3:
        '''While lunging, simultaneously move your arms and lean your torso in the opposite direction to the lunge movement, increasing the load on your glute muscle group. Firmly push off with your front leg, activating both your quads and glutes (thighs and butt muscles) to return to your upright, starting position.
    
    From the same starting position, step with one foot in front and across the body (both feet remain pointed forward). Once the foot is firmly placed on the floor, begin to bend at the hips, pushing them backwards while simultaneously shifting your weight over that same foot. Continue shifting your weight until your tibia (shinbone) is vertical to the floor and your knee is aligned directly over the second toe of that foot. Your opposite leg should be flexed with the heel off the ground.
    
    While lunging, simultaneously rotate your torso and arms in the opposite direction to the lunge movement, increasing the load on your gluteal muscle group. Firmly push off with your front leg, activating both your quads and glutes (thighs and butt muscles) to return to your upright, starting position.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/Gt77dZh/exercise15.png',
    title: 'Glute Bridge',
    subTitle:
        'Real people do yoga – and this is a great entry exercise to the power of slow and controlled movements.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs, Butt/Hips',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Lie supine (on your back) on an exercise mat or the floor in a bent-knee position with your feet flat on the floor. Place your feet hip-width apart with the toes facing away from you. Gently contract your abdominal muscles to flatten your low back into the floor. Attempt to maintain this gentle muscle contraction throughout the exercise''',
    step2:
        '''Upward Phase: Gently exhale while holding your abdominal contraction and press your hips upwards off the floor into extension by contracting your glutes (butt muscles). At the same time press your heels into the floor for more stability. Avoid pushing your hips too high as this generally increases the amount of hyperextension (arching) in your low back. Maintaining your abdominal contraction helps avoid excessive arching in your low back.''',
    step3:
        '''Lowering Phase: Inhale and slowly lower yourself back towards your starting position.
    
    Progression: Gradually progress this exercise by starting with both feet together and extending one leg while in the raised position.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/MnDdkpv/exercise16.png',
    title: 'Hip Rotations (Push-up Position)',
    subTitle:
        'I’ve always had problems finding a good hip exercise – do this before any push-up exercises so you can stabilize your body before fatigue.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs, Butt/Hips, Legs - Thighs',
    equipment: 'No Equipment',
    difficulty: 'Intermediate',
    step1:
        '''This exercise is a dynamic movement exercise used to prepare the body for activity. As it involves a modification to a traditional push-up, it is highly recommended you master your push-up technique before attempting this exercise.''',
    step2:
        '''Starting Position: Kneel on an exercise mat and bring your feet together behind you. Slowly bend forward to place your palms flat on the mat, positioning your hands shoulder-width apart with your fingers facing forward or turned slightly inward. Slowly shift your weight forward until your shoulders are positioned directly over your hands. Reposition your hands as needed to allow full extension of your body without any bend at the hips or knees. Stiffen your torso by contracting your abdominal / core muscles ("bracing")and glutes and quadriceps (butt and thigh muscles), and align your head with your spine. Place your feet together with your ankles dorsiflexed (toes pointed towards your shins).''',
    step3:
        '''Rotational Movement: Exhale and gently draw one knee up towards your chest, bending the knee and flexing at the hip. Do NOT allow your hips and low back to pitch upwards or sag down towards the floor.
    
    In this knee-tuck position, rotate your hips to move your bent leg across the front of your torso, but avoid rotating or dropping your hips. Continue to move until your hips cannot rotate any further. Your head and shoulder should remain level throughout the exercise. Pause very briefly.
    
    Rotate in the opposite direction (away from your torso), rotating until your hips cannot rotate any further without movement in your spine. Your head and shoulder should remain level throughout the exercise.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/Nm87mxP/exercise17.png',
    title: 'Side Lunge',
    subTitle:
        'Advanced in terms of needing to include some movement into what becomes a static pose.',
    backExercises: 'Butt & Hip Exercises',
    bodyPart: 'Butt/Hips, Legs - Thighs',
    equipment: 'No Equipment',
    difficulty: 'Intermediate',
    step1:
        '''Starting Position: Stand with your feet parallel facing forward and hip-width apart. Position your hands where comfortable to help you maintain your balance during the exercise. Stiffen your torso by contracting your core and abdominal muscles ("bracing"). Keep your head facing slightly upwards and shift your weight onto your heels.''',
    step2:
        '''Inhale and gently unload your right leg, slowly stepping to the right while keeping your weight over your heels and both feet facing forward. Once your right foot is firmly placed on the floor, bend at the hips, pushing them backwards while simultaneously shifting your weight towards the right foot. Continue shifting your weight over the right foot until your tibia (shinbone) is vertical to the floor and your right knee is aligned directly over the second toe of your right foot. Your left leg should be near, or at full extension at the knee and your body weight should still be distributed into the right hip. The heels of both feet should stay flat on the floor. Keep your left foot flat on the floor as you allow your weight to shift into your right hip and alternate. Feel free to position your arms where necessary to help maintain your balance, reaching for your right foot with your left hand will emphasize hip flexion (alternate with the right hand reaching for the left foot).''',
    step3:
        '''Exhale and push off firmly with your right leg, returning your body to your starting position. Repeat the movement for the opposite side.
    A common mistake when performing a side lunge is that individuals often step too wide and are unable to align the tibia (shinbone) over the placed foot and the knee falls inside the foot. In this case, simply shorten the width of the step taken to allow you to align the tibia over the placed foot.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/V3byKq8/exercise18.png',
    title: 'Side Lying Hip Abduction',
    subTitle:
        'A common mistake is raising the leg too high in this exercise.  Small but effective movement.',
    backExercises: 'Butt & Hip Exercises',
    bodyPart: 'Butt/Hips',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Lie on your side on a mat/floor with your legs extended straight away from your body. Hold your feet together in neutral position (at 90 degrees to your shinbone) and your lower arm bent and positioned under your head for support, while the upper arm rests upon your upper hip. Your hips and shoulder should be aligned vertically to the floor. Your head should be aligned with your spine.''',
    step2:
        '''Upward Phase: Exhale and gently raise the upper leg off the lower leg while keeping the knee extended and the foot in a neutral position (avoid flexion and extension). The hips should remain vertical to the floor and the knee of the raised leg should point straight away from you (do not rotate upward towards the ceiling or downward towards the floor). Continue raising the leg until the hips begin to tilt upwards or until your feel tension develop in your low back or oblique muscles.''',
    step3:
        '''Downward Phase: Gently inhale and slowly return your raised leg to your starting position in a controlled manner. After completing your set, roll over and repeat with the opposite leg.
    A common mistake is raising the leg too high in this exercise. Given the design of the hip joint, the thigh can only abduct (move out sideways) to 45 degrees. Any movement beyond that position involves movement of the entire hip and no longer targets the muscles intended for this exercise.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/JRK2mYd/exercise19.png',
    title: 'Side Lying Hip Adduction',
    subTitle: 'Even smaller movement than Abduction but equally important.',
    backExercises: 'Butt & Hip Exercises',
    bodyPart: 'Butt/Hips, Legs - Thighs',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Lie on your side on a mat/floor with your legs extended, feet together in neutral position pointing away from your body (at 90 degrees to your shinbone). Keep your lower arm bent and positioned under your head for support while the upper arm rests upon your upper hip. Your hips and shoulder should be aligned vertically to the floor. Your head should be aligned with your spine. Slowly flex (move forward) your lower leg until it lies in front of your upper leg. Rest both feet on the floor and keep both legs extended with feet in neutral position.''',
    step2:
        '''Upward Phase: Exhale and gently raise the lower leg off the floor while keeping the knee extended and the foot in a neutral position. The hips should remain vertical to the floor (knee of the raised leg should not rotate upward towards the ceiling or downward towards the floor). Continue raising the leg until your hips begin to tilt sideways or until your feel tension develop in your low back or oblique muscles.''',
    step3:
        '''Downward Phase: Gently inhale and slowly return the raised leg to your starting position in a controlled manner. After completing your set, roll over and repeat with the opposite leg.
    Due to the limited movement at the hip joint in this direction, the leg need only rise a few inches off the mat/floor.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/SdpzB5R/exercise20.png',
    title: 'Side Plank (Modified)',
    subTitle:
        'Advanced exercise that brings together a combination of core exercises.  If you feel joint pain, STOP.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs, Butt/Hips',
    equipment: 'No Equipment',
    difficulty: 'Advanced',
    step1:
        '''Starting Position: Lie on your side on an exercise mat with your legs extended and the left leg lying directly on the right. Bend your right leg to 90 degrees of flexion while keeping the left leg extended, with the inside surface of your left foot making contact with the mat. Raise your upper body to support yourself on your right arm, with your elbow bent to 90 degrees and positioned directly under your shoulder. Align your head with your spine and keep your hips and right knee in contact with the exercise mat.''',
    step2:
        '''Upward Phase: Exhale, gently contract your abdominal / core muscles to stiffen your spine and lift your hips and right leg off the mat. Your head should be aligned with your spine and your right elbow should remain positioned directly under your shoulder.''',
    step3:
        '''Lowering Phase: Inhale and gently return yourself to your starting position. Switch sides and repeat.
    
    Exercise Variation: Increase the intensity of the exercise by increasing the length of time you are in the raised position.
    Any excessive pressure on the inside of your upper foot or upper knee may cause undesirable stresses on those joints and merits termination of this exercise.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/1LSDTk2/exercise21.png',
    title: 'Side Plank with Straight Leg',
    subTitle:
        'Don’t forget to breathe on this exercise – exhale on the exertion.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs, Butt/Hips',
    equipment: 'No Equipment',
    difficulty: 'Intermediate',
    step1:
        '''Starting Position: Lie on your right side on an exercise mat with extended legs, placing your left leg directly over your right leg and and stacking your feet one on top of the other. Place your right elbow directly under your shoulder, align your head with your spine and keep your hips and right knee in contact with the exercise mat.''',
    step2:
        '''Upward Phase: Exhale, gently contract your abdominal / core muscles to stiffen your spine and lift your hips and knees off the mat, keeping contact with the side of your right foot and keep head aligned with your spine. Keep your right elbow positioned directly under your shoulder.''',
    step3:
        '''Lowering Phase: Inhale and gently return yourself to your starting position. Alternate sides and repeat.
    
    Exercise Variation: You can increase the intensity of this exercise by (1) increasing the length of time you are in the raised position, (2) raising the upper leg off the lower leg or (3) raising the lower leg off the floor and maintaining contact with your elbow and the foot of the upper leg only.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/gtF9hYZ/exercise22.png',
    title: 'Single Leg Stand',
    subTitle:
        'I do this one while brushing my teeth in the morning – some call it crazy, I call it multi-tasking.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Stand with both feet together or spread a few inches apart (2-3"), but parallel with each other. Depress and retract your scapulae (pull your shoulders down and back) while simultaneously engaging (contracting) your abdominal muscles to avoid any excessive arching in your low back. Bend your knees slightly and keep your abductors and adductors under tension (contract your inner and outer thigh muscles). This will help control against excessive hip adduction (sideways shift) during the single-leg stand.''',
    step2:
        '''Movement: Slowly lift one leg 3-6" off the floor, stabilizing your body on the stance (supporting) leg. Avoid any sideways tilting or swaying in your upper body and try not to move the stance (supporting) foot. Hold for 10-15 seconds before returning the raised foot to the floor. Perform an equal number of repetitions with each foot.''',
    step3:
        '''Exercise Variation: Increase the intensity of this exercise by going through the following progressions (1) lift the one leg higher off the floor (illustrated) to further raise your center of mass, (2)raise both arms overhead (3) lift one arm to your side, (4) tilt your head, (5) close your eyes then finally (6) close your eyes and tilt your head.
    Try to perform this exercise in front of a mirror initially so that you can watch and control the degree of hip adduction (sideways shift) over the stance (supporting) leg. Always try to minimize the degree of hip adduction as it places excessive stresses on your knee joint. While balancing on the stance leg (the foot on the ground) think about pressing your foot into the floor and squeezing your glutes (butt muscles), this will help reduce any sideways tilting.
    Most of us can lift one leg, but the question of the quality of movement is important. Perform your movements slowly and under control, avoiding any sudden positional changes. Perform each progression until you can execute them with good control and form.''',
  ),
  Rasp(
    image: 'https://i.ibb.co/4jB8gr1/exercise23.png',
    title: 'Standing Calf Raises - Wall',
    subTitle:
        'My shins are my weak points, thus finding a great exercise like this to improve that area is important.',
    backExercises: 'Lower Leg Exercises',
    bodyPart: 'Legs - Calves and Shins',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Stand 6 -12" away from a wall with your feet hip-width apart and facing forward. Extend your arms to place your palms on the wall, level with your chest or shoulders.''',
    step2:
        '''Upward Phase: Exhale and slowly lift your heels off the floor keeping your knees extended and without rotating your feet. Use your hands on the wall to support your body. Hold your raised position briefly.''',
    step3:
        '''Downward Phase: Inhale and slowly lower your heels back towards the floor.
    
    Exercise Variation (1): Single-leg Calf Raise: From your starting position, bend your left knee to lift your left foot off the floor and perform single-leg calf raises. Repeat with your right leg. 2. Internal and External Foot Position: Turn your feet inward (to the 10 and 2 o'clock positions on a clock) or turn your feet outward (to the same clock positions) as a starting position and perform your calf raises with both feet or with a single-leg. Turning your feet inward places more emphasis on the medial (inner) muscles while turning your feet outward places more emphasis on the lateral (outer) muscles''',
  ),
  Rasp(
    image: 'https://i.ibb.co/KGXX0QX/exercise24.png',
    title: 'Supine Pelvic Tilts',
    subTitle:
        'May not look like an abdominal exercise, but you will feel the burn after a set of these.',
    backExercises: 'Ab Exercises',
    bodyPart: 'Abs',
    equipment: 'No Equipment',
    difficulty: 'Beginner',
    step1:
        '''Starting Position: Lie supine (on your back) with your knees bent and both feet flat on the mat/floor and the knees aligned with the second toe of each foot. Abduct your arms (extend to side) with the palms supinated (facing up to the ceiling).''',
    step2:
        '''Downward Phase: Exhale and gently contract your abdominal muscles to flatten your low back into the mat/floor. Avoid trying to lift your hips (tailbone) off the mat/floor. Hold this position briefly.''',
    step3:
        '''Upward Phase: Inhale and slowly relax your abdominal muscles while gently contracting your erector spinae (low back muscles) to increase the arch in your low back. Avoid raising your hips off the mat/floor. Hold this position briefly before returning to your starting position.''',
  ),
];
