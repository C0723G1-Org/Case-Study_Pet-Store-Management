.form {
display: flex;
flex-direction: column;
gap: 10px;
padding-top: 3em;
padding-left: 2.8em;
padding-right: 2.8em;
padding-bottom: 2.1em;
border: 2px dashed #DAA06D;
border-radius: 15px;
background-color: #EADDCA;
box-shadow: 0 0 0 4px #EADDCA, 2px 2px 4px 2px rgba(0, 0, 0, 0.5);
transition: .4s ease-in-out;
width: fit-content;
}

.form .heading {
padding-left: 0.8em;
color: #DAA06D;
background-color: transparent;
letter-spacing: .5em;
text-align: center;
padding-top: 1em;
padding-bottom: 3em;
text-shadow: inset -1px -1px 1px #DAA06D;
}

.form .input {
outline: none;
padding: 0.5em;
border: 1px solid #DAA06D;
color: #DAA06D;
width: 14em;
height: 3em;
border-radius: 10px;
background-color: #EADDCA;
text-align: center;
}

.form .btn {
align-self: center;
margin-top: 2em;
border-radius: 10px;
outline: none;
border: none;
color: white;
background-color: #E5AA70;
font-weight: bold;
letter-spacing: 0.1em;
transition: .4s ease-in-out opacity,.1s ease-in-out active;
padding: 1em;
box-shadow: 0.5px 0.5px 0.5px 0.5px rgba(0, 0, 0, 0.5);
}

.form .btn:hover {
opacity: 0.8;
}

.form .btn:active {
transform: translateX(0.1em) translateY(0.1em);
box-shadow: none;
}
  