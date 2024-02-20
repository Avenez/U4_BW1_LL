﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrello.aspx.cs" Inherits="U4_BW1_LL.Carrello" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <h3 class="display-4 sexyPink2" style="display: none" runat="server" id="emptyCart">Il carrello è vuoto.</h3>
   <h3 class="display-4 sexyPink2" runat="server" id="boh"></h3>
   <div id="cartRow" style="display: none" class="row" runat="server">
    <asp:Repeater ID="CartRepeater" runat="server">
        <ItemTemplate>
            <div class="col-12">
                <div style="height: 100px" class="d-flex justify-content-between align-items-center border border-dark bg-info">
                    <div class="h-100 d-flex">
                        <div class="h-100 p-2 me-3">
                            <img src='<%# Eval("ImgUrl") %>' class="h-100" alt='<%# Eval("Nome") %>'>
                        </div>
                        <div class="py-2">
                            <h5><%# Eval("Nome") %></h5>
                            <p><%# Eval("Prezzo", "{0:c2}") %></p>
                        </div>
                    </div>
                    <div class="me-3">
                        <asp:Button class="btn btn-danger" ID="ButtonRemove" runat="server" Text="Rimuovi" />
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <div class="d-flex justify-content-between align-items-center mt-3">
        <div>
            <p id="totalPrice" class="mb-0" runat="server"></p>
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Acquista" />
        </div>
        <asp:Button CssClass="btn btn-danger" ID="RemoveAllBtn" runat="server" Text="Rimuovi tutto" />
    </div>
</div>
</asp:Content>
