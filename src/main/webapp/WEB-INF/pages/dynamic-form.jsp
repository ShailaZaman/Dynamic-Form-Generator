<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style type="text/css">
        body {
            margin: 16px;
            color: black;
            background-color: #e4f1ff;
        }

        div.bordered {
            border: 1px solid black;
            padding: 15px;
        }

    </style>
    <%--<script type="text/javascript" src="/resources/js/jquery-1.6.4.min.js"></script>--%>

    <script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
    <link href='<c:url value="/css/style.css"/>' rel="stylesheet" type="text/css">

    <script language="javascript" type="">

        var num = 0;

        function selectionBox(type) {

            var div = getNextDiv(num);
            addClearLink(div);
            addToDiv(div, getTitle());

            for (i = 0; i <= 1; i++) {
                addToDiv(div, getContentWithLabel(type).clone())
            }

            addToDiv(div, getButton(type, num));
            num++;
        }

        function getNextDiv(num){
            var divId = 'div' + num;
            return $('<div/>', { id: divId, class: 'bordered' }).appendTo("#parentDiv");
        }

        function getTitle() {
            return $("<p/>").append(getElement("text", "Title", "text"));
        }

        function getElement(type, value, name) {
            var element = document.createElement("input");

            element.setAttribute("type", type);
            element.setAttribute("value", value);
            element.setAttribute("name", name);

            return element;
        }

        function getContentWithLabel(type) {
            var contentElement = getElement(type, type, type);
            var textBoxElement = getElement("text", "label", "text");
            var content = $("<p/>").append(contentElement);

            return content.append(textBoxElement);
        }

        function getButton(type, num) {
            var buttonElement = document.createElement("button");
            var buttonId = "button"+num;
            buttonElement.setAttribute("type", "button");
            buttonElement.setAttribute("id", buttonId);
            buttonElement.setAttribute("align", "right");
            buttonElement.setAttribute("onclick", "addMore('" + type + "','" + buttonId + "');");
            buttonElement.innerHTML = "Add More!";

            return $("<p/>").append(buttonElement);
        }

        function addClearLink(div) {
            var clearLink = document.createElement('a');
            var linkText = document.createTextNode("Clear");
            clearLink.appendChild(linkText);
            clearLink.setAttribute("href", "#");
            clearLink.setAttribute("style", "float:right");
            clearLink.setAttribute("onclick", "clearDiv('" + div.get(0).id + "');");   //@todo why 0???

            addToDiv(div, clearLink);
        }

        function clearDiv(divId) {
            $(document.getElementById(divId)).remove();
        }

        function addToDiv(div, element){
            $(div).append(element);
        }

        function addMore(type, buttonId) {
            var button = document.getElementById(buttonId);
            $(button).before(getContentWithLabel(type));
        }

    </script>
</head>

<body>
<h1>Welcome to....${message}</h1>

<div>
    <p>Lets start with simple Case :D</p>
</div>

<div id="parentDiv"></div>

<div id="selectBox">
    <label><br/>
        <select onchange="selectionBox(this.value);">
            <option value=""></option>
            <option value="radio">Radio</option>
            <option value="checkBox">Check Box</option>
            <option value="text">Text Box</option>
        </select>
    </label>
</div>
</body>
</html>



