﻿object ConexãoBancoDeDados: TConexãoBancoDeDados
  Left = 0
  Top = 0
  Caption = 'Conex'#227'o Banco De Dados'
  ClientHeight = 199
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Ip: TLabel
    Left = 32
    Top = 21
    Width = 55
    Height = 13
    Caption = 'IP Postgres'
  end
  object NomeBancoDeDados: TLabel
    Left = 200
    Top = 21
    Width = 108
    Height = 13
    Caption = 'Nome Banco De Dados'
  end
  object Usuario: TLabel
    Left = 32
    Top = 67
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  object Senha: TLabel
    Left = 200
    Top = 67
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Porta: TLabel
    Left = 32
    Top = 117
    Width = 26
    Height = 13
    Caption = 'Porta'
  end
  object ConectarBanco: TButton
    Left = 32
    Top = 163
    Width = 289
    Height = 25
    Caption = 'ConectarBanco'
    TabOrder = 0
    OnClick = ConectarBancoClick
  end
  object IPPostgres: TEdit
    Left = 32
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Login: TEdit
    Left = 32
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object NomeBanco: TEdit
    Left = 200
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Senhas: TEdit
    Left = 200
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object PortaPostgres: TEdit
    Left = 32
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 5
  end
end
