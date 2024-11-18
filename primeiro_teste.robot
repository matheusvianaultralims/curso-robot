*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Abrir o navegador e acessar o site do organo
    Open Browser    url=http://localhost:3000    browser=Chrome

Preencher inputs do formulário
    Input Text    id:form-nome    Matheus
    Input Text    id:form-cargo   Desenvolvedor Backend
    Input Text    id:form-imagem  https://picsum.photos/200/300
    Click Element    class:lista-suspensa
    Click Element    //option[contains(.,'Programação')]
    Sleep    4s
    Click Button    id:form-botao
    Element Should Be Visible    class:colaborador
    Sleep    5s