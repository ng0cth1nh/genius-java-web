//var firebaseConfig = {
//    apiKey: "AIzaSyDcd4d3x3AkXIqlC8I_mJI3GVgzIgzAK6A",
//    authDomain: "web-project-e04ed.firebaseapp.com",
//    databaseURL: "https://web-project-e04ed.firebaseio.com",
//    projectId: "web-project-e04ed",
//    storageBucket: "web-project-e04ed.appspot.com",
//    messagingSenderId: "457696683739",
//    appId: "1:457696683739:web:53e8283196c98548174efe",
//    measurementId: "G-PFHQNR6ZJ2",
//  };
//  // Initialize Firebase
//  firebase.initializeApp(firebaseConfig);
//  firebase.analytics();
//
//  function uploadImage() {
//    const ref = firebase.storage().ref();
//    const file = document.querySelector("#photo").files[0];
//    const name = new Date() + "-" + file.name;
//    const metadata = {
//      contentType: file.type,
//    };
//    const task = ref.child(name).put(file, metadata);
//    task
//      .then((snapshot) => snapshot.ref.getDownloadURL())
//      .then((url) => {
//        console.log(url);
//        alert("uploaded!");
//
//       // document.querySelector("#image").src = url;
//        document.querySelector("#tag").href = url;
//      })
//      .catch(console.error);
//  }



            const form = document.getElementById('form');
            const email = document.getElementById('email');
            const date = document.getElementById('date');
            const year = document.getElementById('year');
            const month = document.getElementById('month');
            const reEmail = document.getElementById('re-email');
            const eReEmail = document.getElementById('error-reemail');
            const eDate = document.getElementById('error-date');


            form.addEventListener('submit', (e) => {
                if (email.value.localeCompare(reEmail.value) != 0) {
                    e.preventDefault();
                    eReEmail.style.display = 'flex';
                }else{
                    eReEmail.style.display = 'none';
                }
                if (isValidDate(month.value + "/" + date.value + "/" + year.value) == false) {
                    e.preventDefault();
                    eDate.style.display = 'flex';
                }else{
                    eDate.style.display = 'none';
                }



            });


            function isValidDate(dateString)
            {
                // First check for the pattern
                if (!/^\d{1,2}\/\d{1,2}\/\d{4}$/.test(dateString))
                    return false;

                // Parse the date parts to integers
                var parts = dateString.split("/");
                var day = parseInt(parts[1], 10);
                var month = parseInt(parts[0], 10);
                var year = parseInt(parts[2], 10);

                // Check the ranges of month and year
                if (year < 1000 || year > 3000 || month == 0 || month > 12)
                    return false;

                var monthLength = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

                // Adjust for leap years
                if (year % 400 == 0 || (year % 100 != 0 && year % 4 == 0))
                    monthLength[1] = 29;

                // Check the range of the day
                return day > 0 && day <= monthLength[month - 1];
            }
            ;



