﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Backoffice.aspx.cs" Inherits="U4_BW1_LL.Backoffice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-5">

        <div class="row">
            <div class="col">
                <div class="input-group mb-3">
                    <asp:Button CssClass="btn btn-outline-light" ID="Button1" runat="server" Text="Cerca" OnClick="SearchButton_Click" />
      
                    <select id="SearchType" runat="server" class="form-select">
                        <option selected>Choose...</option>
                        <option value="IDProdotto">Id</option>
                        <option value="Nome">Nome</option>
                        <option value="Prezzo">Prezzo</option>
                    </select>
                    <input type="text" id="SearchKey" runat="server" class="form-control" placeholder="" aria-label="Example text with two button addons">
                    <asp:Button CssClass="btn btn-outline-light" ID="Button2" runat="server" Text="All" OnClick="Page_Load" />
                </div>
            </div>
        </div>

        <div class="row mb-5">
            <div class="Col">
                <form>
                    <div class="row row-cols-3 text-white">

                        <div class="mb-3 col">
                            <label for="FormName" class="form-label">Nome</label>
                            <input type="text" class="form-control" id="FormName" runat="server" aria-describedby="LabelNome">
                        </div>
                        <div class="mb-3 col">
                            <label for="FormDescrizione" class="form-label">Descrizione</label>
                            <input type="text" class="form-control" id="FormDescrizione" runat="server">
                        </div>

                        <div class="mb-3 col">
                            <label for="FormImg" class="form-label">ImgUrl</label>
                            <input type="text" class="form-control" id="FormImg" runat="server">
                        </div>

                        <div class="mb-3  col">
                            <label for="FormPrezzo" class="form-label">Prezzo</label>
                            <input type="text" class="form-control" id="FormPrezzo" runat="server">
                        </div>

                        <div class="mb-3 col">
                            <label for="FormQta" class="form-label">Qta</label>
                            <input type="number" class="form-control" id="FormQta" runat="server"/>
                        </div>
                    </div>


                    <button id="SubmitChageButton" runat="server"  class="btn btn-dark" onclick="SubmitChageButton_Click">Submit</button>
                </form>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <asp:Repeater ID="BackOfficeProductsRepaeter" runat="server">
                    <ItemTemplate>
                        <div class="row border border-2 rounded-3 mb-1  p-2 text-white ">
                            <div class="col-1  border-2 border-end">
                                <h3>ID:</h3>
                                <h4 class="text-truncate"><%#Eval("IDProdotto") %></h4>
                            </div>
                            <div class="col-2  border-2 border-end">
                                <h3>Nome:</h3>
                                <h4 class="text-truncate"><%#Eval("Nome") %></h4>
                            </div>
                            <div class="col-4  border-2 border-end">
                                <h3>Descrizione:</h3>
                                <h4 class="text-truncate"><%#Eval("Descrizione") %></h4>
                            </div>
                            <div class="col-2  border-2 border-end">
                                <!--<img src="<%#Eval("imgurl") %>" alt="sextoy" /> -->
                                <h3>ImgUrl:</h3>
                                <h4 class="text-truncate"><%#Eval("ImgUrl") %></h4>
                            </div>
                            <div class="col-2  border-2 border-end">
                                <h3>Prezzo:</h3>
                                <h4 class="text-truncate"><%#Eval("Prezzo", "{0:c2}") %></h4>
                            </div>
                            <div class="col-1  ">
                                <h3>Qta:</h3>
                                <h4 class="text-truncate"><%#Eval("Qta") %></h4>
                            </div>
                        </div>
                        <div class="row ps-0 mb-3">
                            <div class="col-12 ps-0">
                                <asp:Button CssClass="btn btn-outline-light w-100 ms-0" ID="modifyProduct" CommandArgument='<%#Eval("Nome") + "," + Eval("Descrizione") + "," + Eval("ImgUrl") + "," + Eval("Prezzo") + "," + Eval("Qta") %>  ' Text="Modifica Prodotto" runat="server" OnClick="modifyProduct_Click" />
                            </div>
                        </div>

                    </ItemTemplate>

                </asp:Repeater>

            </div>
        </div>

    </div>



</asp:Content>
