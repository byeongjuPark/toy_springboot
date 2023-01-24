  <%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SUN - 이어폰 만족도 조사</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
   <link rel="stylesheet" href="./bootstraps/css/all.css" />

  </head>
  <body>
    <%@ include file="header.jsp" %>

    <div class="container border border-dark rounded bg-white  my-4">
      <main class="p-5">
      <div class="fs-3 text-center">정보 수정</div>
      <hr />
      <form action="/list/edit/update" method="post" name="signupForm" onsubmit="return submitForm()">
      <input type="hidden" name="USERS_UID" value="${resultMap.USERS_UID}">
        <table class="table table-borderless">
          <tr>
            <th scope="row">아이디</th>
            <td scope="col">
              <div class="d-flex">
                <input
                  type="text"
                  name="user_id"
                  id="user_id"
                  class="form-control w-50 mx-2"
                  value="${resultMap.ID}"
                  disabled
                  required
                />
              </div>

              <div class="small mx-2 my-1">
                6~16자까지 영문자(소문자), 숫자 사용 가능합니다.
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">비밀번호</th>
            <td scope="col">
              <input
                type="password"
                name="PWD"
                id="PWD"
                class="form-control w-50 mx-2"
                required
              />
              <div class="small mx-2 my-1">
                6~16자까지 영문자(대소문자), 숫자 및 특수문자 사용 가능합니다.
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">비밀번호 확인</th>
            <td scope="col">
              <input
                type="password"
                name="user_pw_confirm"
                id="user_pw_confirm"
                class="form-control w-50 mx-2"
                required
              />
            </td>
          </tr>
          <tr>
            <th scope="row">이름</th>
            <td scope="col">
              <input
                type="text"
                name="user_name"
                id="user_name"
                class="form-control w-50 mx-2"
                value="${resultMap.NAME}"
                disabled
                required
              />
            </td>
          </tr>
          <tr>
            <th scope="row">전화번호</th>
            <td scope="col">
              <div class="d-flex">
                <input
                  type="text"
                  name="PHONE"
                  id="PHONE"
                  class="form-control mx-2"
                  style="width: 8rem"
                  value="${resultMap.PHONE}"
                  required
                />
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row">이메일</th>
            <td scope="col">
              <div class="d-flex">
                <input
                  type="text"
                  name="EMAIL"
                  id="EMAIL"
                  class="form-control w-50 mx-2"
                  value="${resultMap.EMAIL}"
                  required
                />
            </td>
            <tr>
              <th scope="row">정보수신 동의</th>
              <td scope="col">
                <div class="d-flex">
                  <div class="form-check mx-2">
                      <input type="checkbox" class="form-check-input" name="checksms" id="checksms">
                      <label for="checksms">SMS로</label>
                  </div>
                  <div class="form-check mx-2">
                      <input type="checkbox" class="form-check-input" name="checkemail" id="checkemail">
                      <label for="checkemail">이메일로</label>
                  </div>
                  <div>정보를 수신하겠습니다.</div>
                  </div>
            </tr>
          </tr>
        </table>
        <div class="d-flex justify-content-center">
            <button type="submit" class="btn btn-warning mx-3 w-25 border-secondary">수정</button>
          </div>
      </form>
    </main>
  </div>
    <%@ include file="footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script type = "text/javascript">
      function checkId() {
        var signupForm = document.signupForm;
        var id = signupForm.user_id.value;

        if(id.length==0 || id == "") {
          alert("아이디를 입력해주세요.");
          signupForm.user_id.focus();
        } else {
          window.open("/views/signupIdCheck.jsp?user_id="+document.signupForm.user_id.value,"ID 중복 체크",
          "toolbar=no, location=no, status=no, menubar=no, scrollbars=no, width=500, height=300");
          if(request.getAttribute("idCheck") == 1) {
            document.signupForm.idCheck.value = "idCheck"
          } 
        }
      }

      </script>
  </body>
</html>
