<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Patient Medical History Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
    	*{
  margin: 0;
  padding: 0;
  outline: none;
  box-sizing: border-box;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
body{
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  padding: 10px;
  font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background: linear-gradient(180deg, #0bb288 0%, #0bb288 0%, white 100%);
}
.container{
  max-width: 800px;
  background: #fff;
  width: 800px;
  padding: 25px 40px 10px 40px;
  box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
}
.container .text{
  text-align: center;
  font-size: 31px;
  font-weight: 600;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background: Black;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
.container form{
  padding: 30px 0 0 0;
}
.container form .form-row{
  display: flex;
  margin: 32px 0;
}
form .form-row .input-data{
  width: 100%;
  height: 40px;
  margin: 0 20px;
  position: relative;
}
form .form-row .textarea{
  height: 70px;
}
.input-data input,
.textarea textarea{
  display: block;
  width: 100%;
  height: 100%;
  border: none;
  font-size: 17px;
  border-bottom: 2px solid rgba(0,0,0, 0.12);
}
.input-data input:focus ~ label, .textarea textarea:focus ~ label,
.input-data input:valid ~ label, .textarea textarea:valid ~ label{
  transform: translateY(-20px);
  font-size: 14px;
  color:  #0bb288;
}
.textarea textarea{
  resize: none;
  padding-top: 10px;
}
.input-data label{
  position: absolute;
  pointer-events: none;
  bottom: 10px;
  font-size: 16px;
  transition: all 0.3s ease;
}
.textarea label{
  width: 100%;
  bottom: 40px;
  background: #fff;
}
.input-data .underline{
  position: absolute;
  bottom: 0;
  height: 2px;
  width: 100%;
}
.input-data .underline:before{
  position: absolute;
  content: "";
  height: 2px;
  width: 100%;
  background:  #0bb288;
  transform: scaleX(0);
  transform-origin: center;
  transition: transform 0.3s ease;
}
.input-data input:focus ~ .underline:before,
.input-data input:valid ~ .underline:before,
.textarea textarea:focus ~ .underline:before,
.textarea textarea:valid ~ .underline:before{
  transform: scale(1);
}
.submit-btn .input-data{
  overflow: hidden;
  height: 45px!important;
  width: 25%!important;
}
.submit-btn .input-data .inner{
  height: 100%;
  width: 300%;
  position: absolute;
  left: -100%;
  background: -webkit-linear-gradient(right, #0bb288,  #0bb288, #af976d, #a16d63);
  transition: all 0.4s;
}
		.submit-btn .input-data:hover .inner{
		  left: 0;
		}
		.submit-btn .input-data input{
		  background: none;
		  border: none;
		  color: #fff;
		  font-size: 17px;
		  font-weight: 500;
		  text-transform: uppercase;
		  letter-spacing: 1px;
		  cursor: pointer;
		  position: relative;
		  z-index: 2;
		}
		@media (max-width: 700px) {
		  .container .text{
		    font-size: 30px;
		  }
		 
		  .container form{
		    padding: 10px 0 0 0;
		  }
		  .container form .form-row{
		    display: block;
		  }
		  form .form-row .input-data{
		    margin: 35px 0!important;
		  }
		  .submit-btn .input-data{
		    width: 40%!important;
		  }
		}
		.remove-medication-btn {
           
            background-color: #ff4d4d;
		    color: #fff;
		    border: none;
		    padding: 10px 15px;
		    font-size: 20px;
		    cursor: pointer;
		    transition: background-color 0.3s ease;
        }
        
        .remove-medication-btn:hover {
		    background-color: #ff4d4d;
		}
        
        .add-medication-btn {
		    background-color: #4caf50;
		    color: #fff;
		    border: none;
		    padding: 10px 15px;
		    font-size: 18px;
		    cursor: pointer;
		    transition: background-color 0.3s ease;
		}
		
		.add-medication-btn:hover {
		    background-color: #45a049;
		}
		.error-message {
            color: red;
        }
    </style>
</head>
<body>
	<% String userid = request.getParameter("userid"); %>
    <div class="container">
        <div class="text">
            Patient Medical History
        </div>
        <form action="${pageContext.request.contextPath}/HistoryServlet" method="post">
            <div class="form-row">
                <div class="input-data">
                    <input type="text" name="patientID" value="${param.patientID}" required>
                    <div class="underline"></div>
                    <label for=""><i class="fa-solid fa-clipboard-user"></i> Patient ID</label>
                    
                    <% String error1 = (String) request.getAttribute("message1"); 
						if(error1!=null)
						{
					%>
					
						<span class="error-message"> <%= error1 %>  </span> <br>
						<% } else { %>
					        <br>
					    <% } %>
                    
                </div>
                <div class="input-data">
                    <input type="text" name="doctorID" value="<%= userid %>" required>
                    <div class="underline"></div>
                    <label for=""><i class="fa-solid fa-user-doctor"></i> Medical Officer's ID</label>
                    
                    <% String error2 = (String) request.getAttribute("message2"); 
						if(error2!=null)
						{
					%>
					
						<span class="error-message"> <%= error2 %>  </span> <br>
						<% } else { %>
					        <br>
					    <% } %>
                </div>
            </div>
            <div class="form-row">
                
                <div class="input-data">
                    <input type="text" name="Allergies" value="${param.Allergies}" required>
                    <div class="underline"></div>
                    <label for=""> <i class="fa-solid fa-hand-dots"></i> Allergies</label>
                </div>
                <div class="input-data">
                    <input type="text" name="Surgical" value="${param.Surgical}" required>
                    <div class="underline"></div>
                    <label for=""><i class="fas fa-hospital"></i> Surgical Procedures</label>
                </div>
            </div>
			
			<div class="form-row">
	         <div class="input-data textarea">
	            <textarea rows="8" cols="80" name="pastHistory" required>${param.past}</textarea>
	            <br />
	            <div class="underline"></div>
	            <label for=""><i class="fa-solid fa-book-medical"></i> Past Medical History </label>
	            
	          </div>
	     	</div>
			<div class="form-row">
	         <div class="input-data textarea">
	            <textarea rows="8" cols="80" name="currentCondition" required>${param.current}</textarea>
	            <br />
	            <div class="underline"></div>
	            <label for=""><i class="fa-solid fa-book-medical"></i> Current Condition </label>
	            
	          </div>
	     	</div>
			<div class="form-row">
	         <div class="input-data textarea">
	            <textarea rows="8" cols="80" name="familyHistory" required>${param.family}</textarea>
	            <br />
	            <div class="underline"></div>
	            <label for=""><i class="fa-solid fa-book-medical"></i> Family History </label>
	            
	          </div>
	     	</div>
            
            
            
            <div id="medication-section">
			    <div class="medication-entry">
			        <div class="form-row">
			            <div class="input-data">
			                <input type="text" name="medication" value="${param.medication}" required>
			                <div class="underline"></div>
			                <label for=""><i class="fa-solid fa-pills"></i> Current Medication</label>
			            </div>
			            <div class="input-data">
			                <input type="text" name="medication" required>
			                <div class="underline"></div>
			                <label for="">Dosage</label>
			            </div>
			            <button type="button" class="add-medication-btn" onclick="addMedication()">+</button>
			        </div>
			    </div>
			</div>

			
            <div class="form-row submit-btn">
                <div class="input-data">
                    <div class="inner"></div>
                    <input type="submit" value="submit">
                </div>
            </div>
        </form>
    </div>
</body>

<script>
    function addMedication() {
        var medicationSection = document.getElementById('medication-section');

        var newMedicationEntry = document.createElement('div');
        newMedicationEntry.className = 'medication-entry';

        var newMedicationRow = document.createElement('div');
        newMedicationRow.className = 'form-row';

        var newMedicationInput = document.createElement('div');
        newMedicationInput.className = 'input-data';
        newMedicationInput.innerHTML = '<input type="text" name="medication" required>' +
            '<div class="underline"></div>' +
            '<label for=""><i class="fa-solid fa-pills"></i> Medication Name</label>';
        newMedicationRow.appendChild(newMedicationInput);

        var newMgInput = document.createElement('div');
        newMgInput.className = 'input-data';
        newMgInput.innerHTML = '<input type="text" name="medication" required>' +
            '<div class="underline"></div>' +
            '<label for="">Dosage</label>';
        newMedicationRow.appendChild(newMgInput);

        var removeButton = document.createElement('button');
        removeButton.type = 'button';
        removeButton.className = 'remove-medication-btn';
        removeButton.innerHTML = '-';
        removeButton.onclick = function () {
            medicationSection.removeChild(newMedicationEntry);
        };
        newMedicationRow.appendChild(removeButton);

        newMedicationEntry.appendChild(newMedicationRow);

        medicationSection.appendChild(newMedicationEntry);
    }
</script>




</html>



