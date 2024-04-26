<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Assign Doctor Schedule</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom CSS -->
  <style>
    /* Add custom styles here */
    .shift-btn {
      margin-right: 10px;
      margin-bottom: 5px;
      display: none; /* Hide actual checkboxes */
    }
    .shift-btn.active-label {
      background-color: #007bff;
      color: #fff;
    }
    .shift-btn.active-label::before {
      content: "✔"; /* Display checkmark */
      margin-right: 5px;
    }
    .shift-btn:checked + label {
      background-color: #007bff;
      color: #fff;
    }
    th {
      text-align: center;
    }
    td {
      text-align: center;
    }
    .error-message {
      color: red;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2 class="mt-5">Assign Doctor Schedule</h2>
    <%-- Display error message if exists --%>
    <% String error = request.getParameter("error");
       if (error != null && !error.isEmpty()) { %>
      <div class="error-message">
        <%= error %>
      </div>
    <% } %>
    <form action="AddDoctorSchedule" method="post">
      <div class="form-group">
        <label for="doctorID">Doctor ID</label>
        <input type="text" class="form-control" id="doctorID" name="doctorID" placeholder="Enter Doctor's ID">
      </div>
      <div class="form-group">
        <label>Schedule</label>
        <table class="table">
          <thead>
            <tr>
              <th>Day</th>
              <th>Shift 1</th>
              <th>Shift 2</th>
              <th>Shift 3</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Monday</td>
              <td>
                <input type="checkbox" id="mondayShift1" class="shift-btn" name="shift" value="Monday,10:00AM - 12:00PM">
                <label for="mondayShift1" class="btn btn-outline-success shift-btn-label">10:00AM - 12:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="mondayShift2" class="shift-btn" name="shift" value="Monday,2:00PM - 4:00PM">
                <label for="mondayShift2" class="btn btn-outline-success shift-btn-label">2:00PM - 4:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="mondayShift3" class="shift-btn" name="shift" value="Monday,6:00PM - 8:00PM">
                <label for="mondayShift3" class="btn btn-outline-success shift-btn-label">6:00PM - 8:00PM</label>
              </td>
            </tr>
            <!-- Tuesday -->
            <tr>
              <td>Tuesday</td>
              <td>
                <input type="checkbox" id="tuesdayShift1" class="shift-btn" name="shift" value="Tuesday,10:00AM - 12:00PM">
                <label for="tuesdayShift1" class="btn btn-outline-success shift-btn-label">10:00AM - 12:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="tuesdayShift2" class="shift-btn" name="shift" value="Tuesday,2:00PM - 4:00PM">
                <label for="tuesdayShift2" class="btn btn-outline-success shift-btn-label">2:00PM - 4:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="tuesdayShift3" class="shift-btn" name="shift" value="Tuesday,6:00PM - 8:00PM">
                <label for="tuesdayShift3" class="btn btn-outline-success shift-btn-label">6:00PM - 8:00PM</label>
              </td>
            </tr>
            <!-- Wednesday -->
            <tr>
              <td>Wednesday</td>
              <td>
                <input type="checkbox" id="wednesdayShift1" class="shift-btn" name="shift" value="Wednesday,10:00AM - 12:00PM">
                <label for="wednesdayShift1" class="btn btn-outline-success shift-btn-label">10:00AM - 12:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="wednesdayShift2" class="shift-btn" name="shift" value="Wednesday,2:00PM - 4:00PM">
                <label for="wednesdayShift2" class="btn btn-outline-success shift-btn-label">2:00PM - 4:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="wednesdayShift3" class="shift-btn" name="shift" value="Wednesday,6:00PM - 8:00PM">
                <label for="wednesdayShift3" class="btn btn-outline-success shift-btn-label">6:00PM - 8:00PM</label>
              </td>
            </tr>
            <!-- Thursday -->
            <tr>
              <td>Thursday</td>
              <td>
                <input type="checkbox" id="thursdayShift1" class="shift-btn" name="shift" value="Thursday,10:00AM - 12:00PM">
                <label for="thursdayShift1" class="btn btn-outline-success shift-btn-label">10:00AM - 12:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="thursdayShift2" class="shift-btn" name="shift" value="Thursday,2:00PM - 4:00PM">
                <label for="thursdayShift2" class="btn btn-outline-success shift-btn-label">2:00PM - 4:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="thursdayShift3" class="shift-btn" name="shift" value="Thursday,6:00PM - 8:00PM">
                <label for="thursdayShift3" class="btn btn-outline-success shift-btn-label">6:00PM - 8:00PM</label>
              </td>
            </tr>
            <!-- Friday -->
            <tr>
              <td>Friday</td>
              <td>
                <input type="checkbox" id="fridayShift1" class="shift-btn" name="shift" value="Friday,10:00AM - 12:00PM">
                <label for="fridayShift1" class="btn btn-outline-success shift-btn-label">10:00AM - 12:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="fridayShift2" class="shift-btn" name="shift" value="Friday,2:00PM - 4:00PM">
                <label for="fridayShift2" class="btn btn-outline-success shift-btn-label">2:00PM - 4:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="fridayShift3" class="shift-btn" name="shift" value="Friday,6:00PM - 8:00PM">
                <label for="fridayShift3" class="btn btn-outline-success shift-btn-label">6:00PM - 8:00PM</label>
              </td>
            </tr>
            <!-- Saturday -->
            <tr>
              <td>Saturday</td>
              <td>
                <input type="checkbox" id="saturdayShift1" class="shift-btn" name="shift" value="Saturday,10:00AM - 12:00PM">
                <label for="saturdayShift1" class="btn btn-outline-success shift-btn-label">10:00AM - 12:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="saturdayShift2" class="shift-btn" name="shift" value="Saturday,2:00PM - 4:00PM">
                <label for="saturdayShift2" class="btn btn-outline-success shift-btn-label">2:00PM - 4:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="saturdayShift3" class="shift-btn" name="shift" value="Saturday,6:00PM - 8:00PM">
                <label for="saturdayShift3" class="btn btn-outline-success shift-btn-label">6:00PM - 8:00PM</label>
              </td>
            </tr>
            <!-- Sunday -->
            <tr>
              <td>Sunday</td>
              <td>
                <input type="checkbox" id="sundayShift1" class="shift-btn" name="shift" value="Sunday,10:00AM - 12:00PM">
                <label for="sundayShift1" class="btn btn-outline-success shift-btn-label">10:00AM - 12:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="sundayShift2" class="shift-btn" name="shift" value="Sunday,2:00PM - 4:00PM">
                <label for="sundayShift2" class="btn btn-outline-success shift-btn-label">2:00PM - 4:00PM</label>
              </td>
              <td>
                <input type="checkbox" id="sundayShift3" class="shift-btn" name="shift" value="Sunday,6:00PM - 8:00PM">
                <label for="sundayShift3" class="btn btn-outline-success shift-btn-label">6:00PM - 8:00PM</label>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <button style="margin-left: 15%; width: 70%; " type="submit" class="btn btn-success">Submit</button>
    </form>
    <a href="./adminDashboard.jsp"><button style="margin-top: 20px; margin-left: 15%; width: 70%; " type="submit" class="btn btn-success">Back</button></a>
    <br>
    <br>
    <br>
    <br>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- Custom JS -->
  <script>
    // Disable selecting other shifts in the same day once one shift is selected
    $('.shift-btn').click(function() {
      var day = $(this).parent().prevAll('td').last().text().trim();
      $('.shift-btn').each(function() {
        if ($(this).parent().prevAll('td').last().text().trim() === day && $(this).hasClass('active')) {
          $(this).prop('checked', false);
          $(this).removeClass('active');
        }
      });
      $(this).addClass('active');
    });
  </script>
</body>
</html>
