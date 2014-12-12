object frmMain: TfrmMain
  Left = 232
  Top = 133
  Width = 1036
  Height = 627
  Caption = 'frmMain'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pm1
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1020
    Height = 126
    BarManager = dxbrmngr1
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object dxrbntbRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Speed Detection'
      Groups = <
        item
          ToolbarName = 'dxbrmngr1Bar1'
        end
        item
          ToolbarName = 'dxbrmngr1Bar3'
        end
        item
          ToolbarName = 'dxbrmngr1Bar2'
        end
        item
          ToolbarName = 'dxbrmngr1Bar4'
        end>
      Index = 0
    end
  end
  object barBawah: TdxRibbonStatusBar
    Left = 0
    Top = 566
    Width = 1020
    Height = 23
    Images = il1
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = 'Vehicle Speed Detection System @2014     '
        Width = 500
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
      end>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object barVideoFile: TdxNavBar
    Left = 0
    Top = 126
    Width = 150
    Height = 440
    Align = alLeft
    Color = clSkyBlue
    ActiveGroupIndex = 0
    TabOrder = 2
    View = 10
    OptionsImage.SmallImages = il1
    object dxnvbrgrpdxnvbr1Group1: TdxNavBarGroup
      Caption = 'Location'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = itemSbyGresik
        end
        item
          Item = itemGresikSby
        end>
    end
    object dxnvbrgrpdxnvbr1Group2: TdxNavBarGroup
      Caption = 'Time'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = itemPagi
        end
        item
          Item = itemSiang
        end
        item
          Item = itemSore
        end>
    end
    object itemSbyGresik: TdxNavBarItem
      Caption = 'Surabaya-Gresik'
      LargeImageIndex = 0
      SmallImageIndex = 2
      OnClick = itemSbyGresikClick
    end
    object itemGresikSby: TdxNavBarItem
      Caption = 'Gresik-Surabaya'
      LargeImageIndex = 1
      SmallImageIndex = 3
      OnClick = itemGresikSbyClick
    end
    object itemPagi: TdxNavBarItem
      Caption = 'Morning'
      LargeImageIndex = 2
      SmallImageIndex = 4
      OnClick = itemPagiClick
    end
    object itemSiang: TdxNavBarItem
      Caption = 'Noon'
      SmallImageIndex = 0
      OnClick = itemSiangClick
    end
    object itemSore: TdxNavBarItem
      Caption = 'Afternoon'
      SmallImageIndex = 1
      OnClick = itemSoreClick
    end
  end
  object pageView: TsPageControl
    Left = 150
    Top = 126
    Width = 870
    Height = 440
    ActivePage = tabProcess
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    SkinData.SkinSection = 'PAGECONTROL'
    object tabPreview: TsTabSheet
      Caption = 'Preview'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object pnlMainVideo: TsPanel
        Left = 8
        Top = 92
        Width = 113
        Height = 145
        BevelOuter = bvNone
        TabOrder = 0
        SkinData.SkinSection = 'PANEL'
        object vdwndw1: TVideoWindow
          Left = 0
          Top = 0
          Width = 113
          Height = 145
          FilterGraph = fltrgrph1
          VMROptions.Mode = vmrWindowed
          Color = clBlack
          Visible = False
        end
      end
      object pnlLabelVideo: TPanel
        Left = 32
        Top = 16
        Width = 81
        Height = 15
        Caption = 'Main Video'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object pnlInformation: TsPanel
        Left = 112
        Top = 164
        Width = 177
        Height = 145
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'PANEL'
        object lblVideoName: TLabel
          Left = 8
          Top = 16
          Width = 32
          Height = 15
          Caption = 'Name :'
        end
        object lblVideoLength: TLabel
          Left = 8
          Top = 40
          Width = 38
          Height = 15
          Caption = 'Length :'
        end
        object lblVideoResolution: TLabel
          Left = 8
          Top = 64
          Width = 56
          Height = 15
          Caption = 'Resolution :'
        end
        object lblVideoLocation: TLabel
          Left = 8
          Top = 88
          Width = 46
          Height = 15
          Caption = 'Location :'
        end
        object lblVideoTime: TLabel
          Left = 8
          Top = 112
          Width = 28
          Height = 15
          Caption = 'Time :'
        end
      end
      object pnlLabelInformation: TPanel
        Left = 232
        Top = 16
        Width = 65
        Height = 15
        Caption = 'Informations'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object pnlLabelSpeed: TPanel
        Left = 240
        Top = 56
        Width = 65
        Height = 15
        Caption = 'Speed'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object pnlSpeed: TsPanel
        Left = 720
        Top = 196
        Width = 73
        Height = 145
        BevelOuter = bvNone
        TabOrder = 5
        SkinData.SkinSection = 'PANEL'
      end
      object pnlLabelOffender: TPanel
        Left = 256
        Top = 80
        Width = 65
        Height = 15
        Caption = 'List Video'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object pnlLabelMedia: TPanel
        Left = 248
        Top = 96
        Width = 65
        Height = 15
        Caption = 'Media'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object pnlMedia: TsPanel
        Left = 616
        Top = 28
        Width = 225
        Height = 189
        BevelOuter = bvNone
        TabOrder = 8
        SkinData.SkinSection = 'PANEL'
        object imgPlay: TImage
          Left = 8
          Top = 16
          Width = 54
          Height = 54
          Cursor = crHandPoint
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000036
            0000003608060000008C456ADD000000206348524D00007A26000080840000FA
            00000080E8000075300000EA6000003A98000017709CBA513C00000009704859
            7300000B0C00000B0C013F4022C800000002624B474400FF878FCCBF000002DE
            494441546843ED9ADF4A954110C085EAA6F226A28728484A89A23790E80F0442
            201EEC527C80BAEAA6A89EA22710BAE8218A022BBB13C58CDEA0BC30B1F9810B
            1F1FE79C99DD9DDDCFA39F307870FFCCFC76E6CCEECE3A35D5FFF42BD0AFC0A4
            AEC0B4183E27F2446455E4F991F099BFD1767152E066C5D037225F440E440E15
            A1CF6791D722378F1BE43931E8A9C886014403FD26730C44CE760DF9580CD871
            006A036FCB9C8FBA80BB224A3F14006A03BE171D976B01DE1545BF2B4005C85F
            A2EB4E69B8FBA260AF225480FB2B3AEF958203EA5F0750016EBF041CE1D785A7
            DADF393C77DBCB73248A9ADF296D4BD8F54A2835B29F06332C5B66398E7D2A56
            69ADFE0F52C93851E46CBE962355CE226CA59E509633BDF556C6BFCB9C43035F
            4AF15AEED9EFC591D281FCFE5308F06B2C18A7746DB5B4F60086EEAB223F1CE6
            1CA67326068EAB8766B8D6DE0443F7F942A1F92A068CFB9466B8D6DE060BFABD
            43F393158C9BAF47461B05E61D9A1CF32E58E0B8B26BDEB0B48F03F30ECD1B16
            30EA1116C3B53E1A9867682E58C028B668465BDAAD601EA1B96201A39A64315C
            EB1303961B9ACF4E355817A1784D563C67033785E2894D1E2736DD53762EBD41
            E7865E3371993768120C65672DEB69EDB58E541F2D1931F499A443F0CB18301E
            08348F68ED4D8F79865E5BEFF51830FA7ECF840B600399A7D445733D168AFE18
            A479655C7B8DD2C0620A184F39DB19701E9975DCC26D8A6D6752C018C3534E8E
            D74A8ECDAEE5F39453D2C094B9D7523DD51CC7FB144F392906941843ADF39207
            1873F03EC58340094363E624BBDEF2820AF310D33CE5C418E2D917DDF3DE504D
            B82E3C87A78A410538DEA778CAF1F4C6B8B97E9608BF519E27A1D4C896643FB7
            441113C60FA533AF1EDEDE63F3CDDEA7624086F5E584B224C23F9FE402AECB1C
            1C93924F14B930A3C6CF4803B574CACE968778FA709FE2EA117D4A2F05A1CD4B
            D9990A2DC54C8A2D94C8103EF337DA4CA5694D51DFDEAF40BF02F557E03F644A
            A65AEA49FC060000000049454E44AE426082}
          OnClick = imgPlayClick
        end
        object imgStop: TImage
          Left = 72
          Top = 16
          Width = 54
          Height = 54
          Cursor = crHandPoint
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000036
            0000003608060000008C456ADD000000206348524D00007A26000080840000FA
            00000080E8000075300000EA6000003A98000017709CBA513C00000009704859
            7300000B0C00000B0C013F4022C800000002624B474400FF878FCCBF0000027E
            494441546843ED9AC94A0431104007D4937A11F133141744F10F445C40100471
            D0A3F8017A57F467040FDEBD2A0AE3721407173C7B510F2A5A0F6C18866952E9
            4ED28B3D5020D3E9AA7AA94C25A9B256AB3ED50C543350D419E817C727445645
            B64576FF84BFF98E677D45811B17470F452E45BE457E0CC2980B910391B1BC41
            F688439B22B70A1013E8B5E8A88B74670DB92C0E3C38006A076E8ACEA52CE086
            C4E88907A076C063B131180A70460CBD04808A209FC5D6B46FB87931F011102A
            827B179B73BEE080FACA002A82FBF401C7F2CB2252EDBF392237E52A72248A90
            BF29D396F0E42AA184C87E26984ED93255E0D8A76C8D861ABF90948C13858FCD
            D715F87DD213CA468EA3154DCE7A92A8B938FBB98A4E9C9E2B5B304EE9BE9D72
            A57FC4068EAB872BC3BEF5ECDB80719FF2ED902BFDE75A306EBE9A4BA22BC7D2
            EAE198D7AB81E3CA9ED658E8F7473560D423B48EBDCAD8534F826EAD1F2B1A30
            8A2D5A8540F9FAA05BEBC796C609AA495A857901DBF9D760A55D8AA54D1EA54D
            F7949D4BB9419360283B6B3363D6E3CE3419311A53A443F09E0D180D82AC23A1
            B53F6C03C6D89B02C0356CA1185F2F00D85A12305A39CD1CC3DD896F5D49C078
            87568E76AD871E97BA964F2B27B4D3267B474923D5FA1EFD295A392663A19E53
            EB1C7001860EFA53340442391F67E74D7C98740515E9614DD3CAC90A0EDBB3AE
            A15AE1B2881C91F20615C1D19FA295132A728F3E965F5CE4492821B225D9CF59
            A2B059C68B3298AE87EBE8B1F9A6DEA76C403A8DE584B22EC23F9FA4056C880E
            8E49894F146961E2DEA741402D9DB2B3A611CF18EE535C3DAC4FE9BE204C7A29
            3B53A1A59849DD8F1219C2DF7CC7335569DA64A87A5ECD403503E167E0174FE8
            C9BD87EE142F0000000049454E44AE426082}
          OnClick = imgStopClick
        end
        object imgPause: TImage
          Left = 136
          Top = 16
          Width = 54
          Height = 54
          Cursor = crHandPoint
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000036
            0000003608060000008C456ADD000000206348524D00007A26000080840000FA
            00000080E8000075300000EA6000003A98000017709CBA513C00000009704859
            7300000B0C00000B0C013F4022C800000002624B474400FF878FCCBF00000297
            494441546843ED9ADD2A454114C715AE7023790C271F89DCB8967C94524AC4A5
            3C00F7C4CB28171E82285F97221F79035C20D6AFEC3AEDCE69FF67F6ECBDCF3E
            B65A75CED96B66D66FD6EC35336BE9E8A8FEAA19A866A0AC33D067868F99AC98
            6C9BECFE099FF98D67BD65811B35430F4D2E4CBE4D7E12049D73930393915683
            EC3683364D6E059024D06BEB63DDA4AB68C82533E03100501CF8C1FA5C2C026E
            D0063DC900280E786C630CE405386503BDE6001541BED8589359C3CDD9001F39
            424570EF36E66C5670407D150015C17D6601C7F22BC253F1770ECF4D84F21C81
            22CF772A694B780E1550F2887E49308DA2652AC7B14FB90E9A97FEBC2F19278A
            2C36DF50E0F7BE27948D16F65634396B3E5EF33DFB4DC706E37BDC4B8A8EE2D9
            2B57304EE94AC78D7414A3151D75FC9A0B1C570FB5631F6F8404DB7701E33E55
            16B033158C9BAF72496C06AE7843D1512796635E8F02C7955DEDB415DE316C18
            56C0C847940D6C590123D95236B02D058C6C52D9C076FE3558DB2EC5B60D1E6D
            1BEE493BB7E5064D8021EDEC1B19955385A2A38E7FAA44C448A74C87E03D1730
            0A04EA8C157DBA1F720143F7C6134E59668A8E32B197AE50E8AF7B82290685D2
            59F501A394F3D0C27077665BA70F186D28E5849ADDD0FDA4CEE553CA096D54DA
            FE8E7C3D55DF8EFA14A59CB4C6846A4FAEB33F04187D509FA22010CA38DF7EDE
            CC86F15050513FAC694A39BE46A56DC7D833A1A1EAE18AF01C9ECA0C2A82A33E
            452927AD07D4F64F592CBF669E27A0E4112D897EC10285CB325E3065AA1EEAEC
            AB7A6CBEA9F729179046BA9C50D64CF8E713D5F0667A97D607C724EF13455A98
            66ED6BF6805C3A6967A5108F0EF729AE1ECEA7F4AC2092FA25ED4C8696642679
            3F5264089FF98D67526A3A69A0EA793503D50CE43F03BF33398D2140D7475F00
            00000049454E44AE426082}
          OnClick = imgPauseClick
        end
        object mp1: TMediaPlayer
          Left = 48
          Top = 107
          Width = -2
          Height = 30
          VisibleButtons = [btPlay, btPause, btStop]
          Display = pnlMainVideo
          FileName = 
            'E:\Tugas Akhir PENS\Coding\Delphi\Desain UI\Alpha_4\Desember\Gre' +
            'sik - Surabaya (Asli)\Siang\VID_20141206_125505.3gp'
          Visible = False
          TabOrder = 0
        end
      end
      object pnlLabelCapture: TPanel
        Left = 256
        Top = 120
        Width = 65
        Height = 15
        Caption = 'Capture'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object pnlCapture: TsPanel
        Left = 464
        Top = 188
        Width = 73
        Height = 145
        BevelOuter = bvNone
        TabOrder = 10
        SkinData.SkinSection = 'PANEL'
        object imgHasilCapture: TImage
          Left = 0
          Top = 0
          Width = 100
          Height = 100
          Proportional = True
        end
      end
      object pnlLabelFrameVideo: TPanel
        Left = 128
        Top = 24
        Width = 81
        Height = 15
        Caption = 'Frame Video'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object pnlFrameVideo: TsPanel
        Left = 144
        Top = 20
        Width = 113
        Height = 145
        BevelOuter = bvNone
        TabOrder = 12
        SkinData.SkinSection = 'PANEL'
        object img1: TImage
          Left = 0
          Top = 0
          Width = 113
          Height = 145
          Align = alClient
          OnMouseDown = img1MouseDown
          OnMouseMove = img1MouseMove
        end
      end
      object pnlLabelGrayVideo: TPanel
        Left = 40
        Top = 24
        Width = 81
        Height = 15
        Caption = 'Grayscale Video'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object pnlLabelThresholdVideo: TPanel
        Left = 48
        Top = 56
        Width = 81
        Height = 15
        Caption = 'Threshold Video'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object pnlGrayVideo: TsPanel
        Left = 456
        Top = 36
        Width = 113
        Height = 145
        BevelOuter = bvNone
        TabOrder = 15
        SkinData.SkinSection = 'PANEL'
        object img2: TImage
          Left = 0
          Top = 0
          Width = 113
          Height = 145
          Align = alClient
        end
      end
      object pnlThresholdVideo: TsPanel
        Left = 344
        Top = 68
        Width = 113
        Height = 145
        BevelOuter = bvNone
        TabOrder = 16
        SkinData.SkinSection = 'PANEL'
        object img5: TImage
          Left = 0
          Top = 0
          Width = 113
          Height = 145
          Align = alClient
        end
      end
      object pnlOffender: TsPanel
        Left = 568
        Top = 164
        Width = 201
        Height = 213
        BevelOuter = bvNone
        TabOrder = 17
        SkinData.SkinSection = 'PANEL'
        object mmo1: TMemo
          Left = 8
          Top = 8
          Width = 185
          Height = 105
          Lines.Strings = (
            'mmo1')
          TabOrder = 0
          OnChange = mmo1Change
        end
        object listVIdeo: TListBox
          Left = 8
          Top = 112
          Width = 185
          Height = 201
          ItemHeight = 13
          TabOrder = 1
          OnClick = listVIdeoClick
        end
      end
    end
    object tabProcess: TsTabSheet
      Caption = 'Report'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object strngrdLaporan: TStringGrid
        Left = 0
        Top = 0
        Width = 677
        Height = 410
        Align = alClient
        Color = clBtnShadow
        FixedColor = clWhite
        RowCount = 1
        FixedRows = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnDrawCell = strngrdLaporanDrawCell
      end
      object pnlKanan: TPanel
        Left = 677
        Top = 0
        Width = 185
        Height = 410
        Align = alRight
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clBtnShadow
        TabOrder = 1
        object btn1: TButton
          Left = 38
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Tampil Report'
          TabOrder = 0
          OnClick = btn1Click
        end
        object btn2: TButton
          Left = 64
          Top = 64
          Width = 75
          Height = 25
          Caption = 'btn2'
          TabOrder = 1
          OnClick = btn2Click
        end
      end
    end
  end
  object sknmngr1: TsSkinManager
    InternalSkins = <>
    MenuSupport.IcoLineSkin = 'ICOLINE'
    MenuSupport.ExtraLineFont.Charset = DEFAULT_CHARSET
    MenuSupport.ExtraLineFont.Color = clWindowText
    MenuSupport.ExtraLineFont.Height = -11
    MenuSupport.ExtraLineFont.Name = 'MS Sans Serif'
    MenuSupport.ExtraLineFont.Style = []
    SkinDirectory = 'D:\Master\Library\Delphi\AlphaControl\AlphaControl\Skins'
    SkinName = 'TV-b'
    SkinInfo = '6.4'
    ThirdParty.ThirdEdits = ' '
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = ' '
    ThirdParty.ThirdCheckBoxes = ' '
    ThirdParty.ThirdGroupBoxes = ' '
    ThirdParty.ThirdListViews = ' '
    ThirdParty.ThirdPanels = ' '
    ThirdParty.ThirdGrids = ' '
    ThirdParty.ThirdTreeViews = ' '
    ThirdParty.ThirdComboBoxes = ' '
    ThirdParty.ThirdWWEdits = ' '
    ThirdParty.ThirdVirtualTrees = ' '
    ThirdParty.ThirdGridEh = ' '
    ThirdParty.ThirdPageControl = ' '
    ThirdParty.ThirdTabControl = ' '
    ThirdParty.ThirdToolBar = ' '
    ThirdParty.ThirdStatusBar = ' '
    ThirdParty.ThirdSpeedButton = ' '
    Left = 88
    Top = 456
  end
  object sknprvdr1: TsSkinProvider
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 16
    Top = 480
  end
  object dxbrmngr1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeIcons = True
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 56
    Top = 472
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbrmngr1Bar1: TdxBar
      Caption = 'File'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 277
      FloatTop = 166
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnVideoFile'
        end
        item
          Visible = True
          ItemName = 'btnVideoStream'
        end
        item
          Visible = True
          ItemName = 'cbbWebcamList'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrmngr1Bar2: TdxBar
      Caption = 'Report'
      CaptionButtons = <>
      DockedLeft = 460
      DockedTop = 0
      FloatLeft = 623
      FloatTop = 336
      FloatClientWidth = 99
      FloatClientHeight = 126
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnReportDay'
        end
        item
          Visible = True
          ItemName = 'btnReportWeek'
        end
        item
          Visible = True
          ItemName = 'btnReportMonth'
        end
        item
          Visible = True
          ItemName = 'cbbDaily'
        end
        item
          Visible = True
          ItemName = 'cbbWeekly'
        end
        item
          Visible = True
          ItemName = 'cbbMonthly'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrmngr1Bar3: TdxBar
      Caption = 'Options'
      CaptionButtons = <>
      DockedLeft = 159
      DockedTop = 0
      FloatLeft = 245
      FloatTop = 67
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cbbFiltering'
        end
        item
          Visible = True
          ItemName = 'edtMaxSpeed'
        end
        item
          Visible = True
          ItemName = 'cbbJalur'
        end
        item
          Visible = True
          ItemName = 'edtMeter'
        end
        item
          Visible = True
          ItemName = 'edtLocation'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrmngr1Bar4: TdxBar
      Caption = 'Cordinat'
      CaptionButtons = <>
      DockedLeft = 698
      DockedTop = 0
      FloatLeft = 1384
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edtKiriAtas'
        end
        item
          Visible = True
          ItemName = 'edtTengahAtas'
        end
        item
          Visible = True
          ItemName = 'edtKananAtas'
        end
        item
          Visible = True
          ItemName = 'edtKiriBawah'
        end
        item
          Visible = True
          ItemName = 'edtTengahBawah'
        end
        item
          Visible = True
          ItemName = 'edtKananBawah'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnVideoFile: TdxBarLargeButton
      Caption = 'Video File'
      Category = 0
      Hint = 'Video File'
      Visible = ivAlways
      LargeGlyph.Data = {
        76140000424D7614000000000000360000002800000024000000240000000100
        2000000000004014000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000003E000000CE000000FD0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FD000000CD0000003C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        001E000000F5000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000F30000001C000000000000000000000000000000000000
        000000000000000000000000000000000071000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF0000006F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0080000000FF000000FF00000080000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000080000000FF000000FF000000800000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0080000000FF000000FF00000080000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000080000000FF000000FF000000800000
        000000000000000000000000003E000000CE000000FD000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FD000000CD0000003C0000000000000000000000000000
        0080000000FF000000FF0000008000000000000000000000001E000000F50000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00F30000001C000000000000000000000080000000FF000000FF000000800000
        00000000000000000071000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000006F00000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000D4000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000900000098000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000520000
        00EE000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000000000000000000000000001D000000C2000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
        00000000000300000080000000FC000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000000000000000000000000000000000000000000000000003D0000
        00E2000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
        000000000000000000000000000000000030000000F5000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000000000000000000000000000000000000000000110000008B0000
        00F8000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
        000700000074000000EE000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0040000000800000008000000040000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000000000000010000005D000000E1000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000800000000000000000000000000000000000000000000000000000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF00000045000000CF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0000000000000000000000000000000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000800000000000000000000000000000000000000000000000000000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0000000000000000000000000000000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000800000000000000000000000000000000000000000000000000000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0000000000000000000000000000000000000000000000000040000000800000
        00800000008000000080000000800000008000000080000000FF000000FF0000
        00FF000000800000008000000080000000800000008000000080000000FF0000
        00FF000000FF0000008000000080000000800000008000000080000000800000
        0080000000400000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF0000000000000000000000000000
        00000000000000000000000000FF000000FF000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000000000000000000000000000000000000000000000000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FD000000FF000000FF0000008000000080000000800000
        00800000008000000080000000FF000000FF000000FD00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000CF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000CE0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000003F000000F5000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000F50000003E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000001E0000
        006F000000800000008000000080000000800000008000000080000000710000
        001E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnVideoFileClick
      Width = 60
    end
    object btnVideoStream: TdxBarLargeButton
      Caption = 'Video Stream'
      Category = 0
      Hint = 'Video Stream'
      Visible = ivAlways
      LargeGlyph.Data = {
        76140000424D7614000000000000360000002800000024000000240000000100
        2000000000004014000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000260000
        00E0000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000DE000000240000000000000000000000000000
        0000000000000000000800000000000000000000000000000000000000000000
        000000000000000000000000007C000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        007B000000000000000000000000000000000000004800000078000000000000
        0000000000000000000000000000000000000000000000000000000000800000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000800000000000000000000000000000
        0048000000F80000008000000000000000000000000000000000000000000000
        0000000000000000000000000080000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0080000000000000000000000048000000F8000000FF00000080000000000000
        0000000000000000000000000000000000000000000000000000000000800000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000800000000000000048000000F80000
        00FF000000FF0000008000000000000000000000000000000000000000000000
        0000000000000000000000000080000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        008000000048000000F8000000FF000000FF000000FF00000080000000000000
        0000000000000000000000000000000000000000000000000000000000800000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000C0000000F8000000FF000000FF0000
        00FF000000FF0000008000000000000000000000000000000000000000000000
        0000000000000000000000000080000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF00000080000000000000
        0000000000000000000000000000000000000000000000000000000000800000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF0000008000000000000000000000000000000000000000000000
        0000000000000000000000000080000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF00000080000000000000
        0000000000000000000000000000000000000000000000000000000000800000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF0000008000000000000000000000000000000000000000000000
        0000000000000000000000000080000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00C0000000F8000000FF000000FF000000FF000000FF00000080000000000000
        0000000000000000000000000000000000000000000000000000000000800000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF0000008000000048000000F8000000FF0000
        00FF000000FF0000008000000000000000000000000000000000000000000000
        0000000000000000000000000080000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00800000000000000048000000F8000000FF000000FF00000080000000000000
        0000000000000000000000000000000000000000000000000000000000800000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000800000000000000000000000480000
        00F8000000FF0000008000000000000000000000000000000000000000000000
        0000000000000000000000000080000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        008000000000000000000000000000000048000000F800000080000000000000
        00000000000000000000000000000000000000000000000000000000007C0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF0000007B0000000000000000000000000000
        0000000000480000007800000000000000000000000000000000000000000000
        0000000000000000000000000027000000E1000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000E10000
        0026000000000000000000000000000000000000000000000008000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnVideoStreamClick
      Width = 60
    end
    object btnReportDay: TdxBarLargeButton
      Caption = 'Daily Report'
      Category = 0
      Hint = 'Daily Report'
      Visible = ivAlways
      LargeGlyph.Data = {
        76140000424D7614000000000000360000002800000024000000240000000100
        2000000000004014000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000071000000F8000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000CC0000000700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00D3000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF0000000700000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000CB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000000000000000000000000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF00000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
        0000000000FF000000FF000000FF000000000000000000000000000000FF0000
        00FF000000FF000000000000000000000000000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000000000000000000000000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF00000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
        0000000000FF000000FF000000FF000000000000000000000000000000FF0000
        00FF000000FF000000000000000000000000000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000000000000000000000000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF00000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
        0000000000FF000000FF000000FF000000000000000000000000000000FF0000
        00FF000000FF000000000000000000000000000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000000000000000000000000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
        0000000000FF000000FF000000FF000000000000000000000000000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000000000000000000000000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
        0000000000FF000000FF000000FF000000000000000000000000000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000020000000200000002000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000F6000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF0000006F00000000000000000000000000000000000000000000
        00000000000000000000000000000000001B000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000D200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnReportDayClick
      Width = 60
    end
    object btnReportWeek: TdxBarLargeButton
      Caption = 'Weekly Report'
      Category = 0
      Hint = 'Weekly Report'
      Visible = ivAlways
      LargeGlyph.Data = {
        76140000424D7614000000000000360000002800000024000000240000000100
        2000000000004014000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FF000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF00000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF00000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000001000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF0000001B000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FD000000FD000000FD000000FF000000FF000000FF000000FD000000FD0000
        00FD000000FD000000FD000000FD000000FD000000FD000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FE000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF00000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000000000000000000000000000FE000000FF0000
        00FF000000FF000000FF000000FF000000020000000200000002000000FF0000
        00FF000000FF0000000200000002000000020000000200000002000000020000
        000200000002000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FE000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000000000000000000000000000FE000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FE000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000000000000000000000000000FE000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FE000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000000000000000000000000000FD000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FD000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000000000000000000000000000FD000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FD000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000FF000000FF000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000000000000000000000000000FD000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000FD000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00000000000000000000000000000000000000000000000000FC000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000C6000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000000000000000000000000000000000000000000006000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000D1000000000000000000000000000000000000
        0000000000000000000000000006000000C9000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000F800000070000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnReportWeekClick
      Width = 60
    end
    object btnReportMonth: TdxBarLargeButton
      Caption = 'Monthly Report'
      Category = 0
      Hint = 'Monthly Report'
      Visible = ivAlways
      LargeGlyph.Data = {
        76140000424D7614000000000000360000002800000024000000240000000100
        2000000000004014000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000071000000F8000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000CC0000000700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00D3000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF0000000700000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000CB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        006E00000010000000F9000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000F6000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000010000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF0000006F00000000000000000000000000000000000000000000
        00000000000000000000000000000000001B000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        0000000000000000006E000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000D200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000003D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000024000000FF000000FF0000
        00FF000000FF000000FF000000FF000000EE0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000026000000FF000000FF000000FF000000FF000000C30000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnReportMonthClick
      Width = 60
    end
    object btnHelp: TdxBarLargeButton
      Caption = 'Manual Guide'
      Category = 0
      Hint = 'Manual Guide'
      Visible = ivAlways
    end
    object btnAbout: TdxBarLargeButton
      Caption = 'About'
      Category = 0
      Hint = 'About'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxbrsbtm1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxbrlrgbtn1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxbrspndt1: TdxBarSpinEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
    end
    object btnSettingSpeed: TdxBarLargeButton
      Caption = 'Speed Max'
      Category = 0
      Hint = 'Speed Max'
      Visible = ivAlways
    end
    object btnSettingThreshold: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxbrlstm1: TdxBarListItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
    end
    object cbbFiltering: TdxBarCombo
      Align = iaClient
      Caption = 'Filtering'
      Category = 0
      Hint = 'Filtering'
      Visible = ivAlways
      Width = 50
      Text = 'Mean'
      Items.Strings = (
        'Mean'
        'Adaptive Threshold'
        'None')
      ItemIndex = 0
    end
    object dxbrcmb2: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      ItemIndex = -1
    end
    object dxbrsbtm2: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object edtMaxSpeed: TdxBarEdit
      Align = iaClient
      Caption = 'Max Speed'
      Category = 0
      Hint = 'Max Speed'
      Visible = ivAlways
      Width = 50
      Text = '30'
    end
    object dxbrdt2: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
    end
    object dxbrdt3: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
    end
    object dxbrdt4: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
    end
    object dxbrlrgbtn2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object cstmdxbrcmb1: TCustomdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
    end
    object dxbrcntnrtm1: TdxBarContainerItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxbrmgcmb1: TdxBarImageCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888800000000000000080FFFFFFFFFFFFF080FDEBFFFFFFFFF080FB6DF00F00F
        0F080F9ACFFFFFFFFF080FFFFFFFFFFFFF080C9D6CCCCCCCCC080C46BCFFFFCF
        FC080CBAECCCCCCCCC080FFFFFFFFFFFFF080F64AFFFFFFFFF080F496F00F000
        0F080F94BFFFFFFFFF080FFFFFFFFFFFFF080000000000000008}
      Width = 100
      ItemIndex = -1
      ImageIndexes = ()
    end
    object dxbrdtcmb1: TdxBarDateCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      Width = 100
    end
    object dxbrdtcmb2: TdxBarDateCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      Width = 100
    end
    object dxbrdtcmb3: TdxBarDateCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      Width = 100
    end
    object dxbrcmb1: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      ItemIndex = -1
    end
    object dxbrlrgbtn3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Glyph.Data = {
        76140000424D7614000000000000360000002800000024000000240000000100
        2000000000004014000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000003E000000CE000000FD0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FD000000CD0000003C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        001E000000F5000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000F30000001C000000000000000000000000000000000000
        000000000000000000000000000000000071000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF0000006F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0080000000FF000000FF00000080000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000080000000FF000000FF000000800000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0080000000FF000000FF00000080000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000080000000FF000000FF000000800000
        000000000000000000000000003E000000CE000000FD000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FD000000CD0000003C0000000000000000000000000000
        0080000000FF000000FF0000008000000000000000000000001E000000F50000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00F30000001C000000000000000000000080000000FF000000FF000000800000
        00000000000000000071000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000006F00000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000D4000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000900000098000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000520000
        00EE000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000000000000000000000000001D000000C2000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
        00000000000300000080000000FC000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000000000000000000000000000000000000000000000000003D0000
        00E2000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
        000000000000000000000000000000000030000000F5000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000000000000000000000000000000000000000000110000008B0000
        00F8000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
        000700000074000000EE000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0040000000800000008000000040000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000000000000010000005D000000E1000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000800000000000000000000000000000000000000000000000000000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF00000045000000CF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0000000000000000000000000000000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000800000000000000000000000000000000000000000000000000000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0000000000000000000000000000000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000800000000000000000000000000000000000000000000000000000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0000000000000000000000000000000000000000000000000040000000800000
        00800000008000000080000000800000008000000080000000FF000000FF0000
        00FF000000800000008000000080000000800000008000000080000000FF0000
        00FF000000FF0000008000000080000000800000008000000080000000800000
        0080000000400000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF0000000000000000000000000000
        00000000000000000000000000FF000000FF000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000000000000000000000000000000000000000000000000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FD000000FF000000FF0000008000000080000000800000
        00800000008000000080000000FF000000FF000000FD00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000CF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000CE0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000003F000000F5000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000F50000003E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000001E0000
        006F000000800000008000000080000000800000008000000080000000710000
        001E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      HotGlyph.Data = {
        76140000424D7614000000000000360000002800000024000000240000000100
        2000000000004014000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000003E000000CE000000FD0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FD000000CD0000003C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        001E000000F5000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000F30000001C000000000000000000000000000000000000
        000000000000000000000000000000000071000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF0000006F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0080000000FF000000FF00000080000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000080000000FF000000FF000000800000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0080000000FF000000FF00000080000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000080000000FF000000FF000000800000
        000000000000000000000000003E000000CE000000FD000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FD000000CD0000003C0000000000000000000000000000
        0080000000FF000000FF0000008000000000000000000000001E000000F50000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00F30000001C000000000000000000000080000000FF000000FF000000800000
        00000000000000000071000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000006F00000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000D4000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000900000098000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000520000
        00EE000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000000000000000000000000001D000000C2000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
        00000000000300000080000000FC000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000000000000000000000000000000000000000000000000003D0000
        00E2000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
        000000000000000000000000000000000030000000F5000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0080000000FF000000FF00000080000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF0000000000000000000000000000000000000000000000110000008B0000
        00F8000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000080000000000000000000000080000000FF000000FF000000800000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
        000700000074000000EE000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0040000000800000008000000040000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF00000000000000010000005D000000E1000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000800000000000000000000000000000000000000000000000000000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF00000045000000CF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0000000000000000000000000000000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000800000000000000000000000000000000000000000000000000000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0000000000000000000000000000000000000000000000000080000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000800000000000000000000000000000000000000000000000000000
        00000000000000000080000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF0000008000000000000000000000
        0000000000000000000000000000000000000000000000000040000000800000
        00800000008000000080000000800000008000000080000000FF000000FF0000
        00FF000000800000008000000080000000800000008000000080000000FF0000
        00FF000000FF0000008000000080000000800000008000000080000000800000
        0080000000400000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF000000FF000000FF0000000000000000000000000000
        00000000000000000000000000FF000000FF000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FF000000FF0000
        00FF000000000000000000000000000000000000000000000000000000FF0000
        00FF000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FD000000FF000000FF0000008000000080000000800000
        00800000008000000080000000FF000000FF000000FD00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000CF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000CE0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000003F000000F5000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000F50000003E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000001E0000
        006F000000800000008000000080000000800000008000000080000000710000
        001E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object cbbDaily: TdxBarDateCombo
      Align = iaClient
      Caption = 'Start Day '
      Category = 0
      Hint = 'Start Day '
      Visible = ivAlways
      OnChange = cbbDailyChange
      Width = 110
    end
    object cbbWeekly: TdxBarDateCombo
      Align = iaClient
      Caption = 'End Day'
      Category = 0
      Enabled = False
      Hint = 'End Day'
      Visible = ivAlways
      OnChange = cbbWeeklyChange
      Width = 110
    end
    object dxbrlstm2: TdxBarListItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
    end
    object cbbMonthly: TdxBarCombo
      Align = iaClient
      Caption = 'Month'
      Category = 0
      Enabled = False
      Hint = 'Month'
      Visible = ivAlways
      OnChange = cbbMonthlyChange
      Width = 110
      Text = 'Januari'
      Items.Strings = (
        'Januari'
        'Februari'
        'Maret'
        'April'
        'Mei'
        'Juni'
        'Juli'
        'Agustus'
        'September'
        'Oktober'
        'November'
        'Desember')
      ItemIndex = 0
    end
    object cbbWebcamList: TdxBarCombo
      Caption = 'Camera'
      Category = 0
      Enabled = False
      Hint = 'Camera'
      Visible = ivAlways
      OnChange = cbbWebcamListChange
      Width = 100
      ItemIndex = -1
    end
    object dxbrclrcmb1: TdxBarColorCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF000101A6
        000202B4000404E4FFFFFFFF000101A6000202B4000404E4FFFFFFFF000EF9A7
        0030FABC00C0FCE4FFFFFFFF0000F9A70000FABC0000FCE4FFFFFFFF000001A7
        000002BC000004E4FFFFFFFF000001A7000002BC000004E4FFFFFFFF000001A7
        000002BC000004E4FFFFFFFF000001A7000002BC000004E4FFFFFFFF000001A7
        000002BC000004E4FFFFFFFF0000F9A70000FABC0000FCE4FFFFFFFF000EF9A7
        0030FABC00C0FCE4FFFFFFFF000101A6000202B4000404E4FFFFFFFF000101A6
        000202B4000404E4FFFFFFFF5201F9075202FA075204FC07FFFFFFFF070056FF
        070072FF0700D2FFFFFFFFFFFF5207FFFF5207FFFF5207FFFFFF}
      Width = 100
      Color = clBlack
    end
    object dxbrprgrstm1: TdxBarProgressItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxbrcntnrtm2: TdxBarContainerItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxbrcmb3: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      ItemIndex = -1
    end
    object cbbJalur: TdxBarCombo
      Align = iaClient
      Caption = 'Track'
      Category = 0
      Hint = 'Track'
      Visible = ivAlways
      Width = 50
      Text = 'True'
      Items.Strings = (
        'True'
        'False')
      ItemIndex = 0
    end
    object edtKiriAtas: TdxBarEdit
      Align = iaClient
      Caption = 'Top Left'
      Category = 0
      Enabled = False
      Hint = 'Top Left'
      Visible = ivAlways
      Width = 60
    end
    object edtTengahAtas: TdxBarEdit
      Align = iaClient
      Caption = 'Top Middle'
      Category = 0
      Enabled = False
      Hint = 'Top Middle'
      Visible = ivAlways
      Width = 60
    end
    object edtKananAtas: TdxBarEdit
      Align = iaClient
      Caption = 'Top Right'
      Category = 0
      Enabled = False
      Hint = 'Top Right'
      Visible = ivAlways
      Width = 60
    end
    object edtKiriBawah: TdxBarEdit
      Align = iaClient
      Caption = 'Bottom Left'
      Category = 0
      Enabled = False
      Hint = 'Bottom Left'
      Visible = ivAlways
      Width = 60
    end
    object edtTengahBawah: TdxBarEdit
      Align = iaClient
      Caption = 'Bottom Middle'
      Category = 0
      Enabled = False
      Hint = 'Bottom Middle'
      Visible = ivAlways
      Width = 60
    end
    object edtKananBawah: TdxBarEdit
      Align = iaClient
      Caption = 'Bottom Right'
      Category = 0
      Enabled = False
      Hint = 'Bottom Right'
      Visible = ivAlways
      Width = 60
    end
    object edtMeter: TdxBarEdit
      Align = iaClient
      Caption = 'Length (m)'
      Category = 0
      Hint = 'Length (m)'
      Visible = ivAlways
      Width = 100
      Text = '8'
    end
    object edtLocation: TdxBarEdit
      Align = iaClient
      Caption = 'Capture Loc.'
      Category = 0
      Hint = 'Capture Loc.'
      Visible = ivAlways
      Width = 100
    end
    object dxbrlstm3: TdxBarListItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
    end
    object dxbrcmb4: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      ItemIndex = -1
    end
  end
  object dxbrplctnmn1: TdxBarApplicationMenu
    BarManager = dxbrmngr1
    Buttons = <>
    ExtraPane.Items = <>
    ItemLinks = <>
    UseOwnFont = False
    Left = 112
    Top = 472
  end
  object tmrThreshold: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrThresholdTimer
    Left = 56
    Top = 376
  end
  object fltrgrph1: TFilterGraph
    Mode = gmCapture
    GraphEdit = False
    Left = 16
    Top = 360
  end
  object smplgrbr1: TSampleGrabber
    FilterGraph = fltrgrph1
    MediaType.data = {
      7669647300001000800000AA00389B717DEB36E44F52CE119F530020AF0BA770
      FFFFFFFF0000000001000000809F580556C3CE11BF0100AA0055595A00000000
      0000000000000000}
    Left = 144
    Top = 80
  end
  object fltr1: TFilter
    BaseFilter.data = {00000000}
    FilterGraph = fltrgrph1
    Left = 152
    Top = 32
  end
  object il1: TImageList
    Left = 98
    Top = 416
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF020202FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF030303FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF030303FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF030303FF000000FF000000FF080808FF000000FF000000FF000000FF6F6F
      6FFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF080808FF383838FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF313131FF5B5B5BFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF030303FF080808FF5A5A5AFF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636363FF060606FF030303FF0000
      00FF000000FF000000FF000000FF000000FF030303FF313131FF000000FF0808
      08FF030303FF030303FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF202020FF020202FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF333333FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF080808FF0404
      04FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF030303FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF030303FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF060606FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF636363FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF757575FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF757575FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF010101FF010101FF030303FF747474FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF010101FF010101FF030303FF747474FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF242424FF6E6E
      6EFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF2A2A2AFF797979FF000000FF000000FF000000FF000000FF888888FFB0B0
      B0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF8B8B8BFFB6B6B6FF000000FF000000FF000000FF000000FF505050FF0404
      04FF000000FF000000FF010101FF000000FF000000FF020202FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF505050FF0404
      04FF000000FF000000FF010101FF000000FF000000FF020202FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF040404FF2B2B2BFF000000FF000000FF000000FF000000FF757575FF7777
      77FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF777777FF8C8C8CFF000000FF000000FF000000FF000000FF505050FF0404
      04FF010101FF020202FF000000FF000000FF000000FF313131FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF505050FF0404
      04FF000000FF000000FF000000FF000000FF000000FF313131FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0202
      02FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0101
      01FF030303FF2A2A2AFF000000FF000000FF000000FF000000FF757575FF7676
      76FF757575FF757575FF757575FF757575FF757575FF757575FF757575FF7575
      75FF767676FF8B8B8BFF000000FF000000FF000000FF000000FF505050FF0505
      05FF0E0E0EFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF505050FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2121
      21FF333333FF010101FF000000FF000000FF000000FF000000FF000000FF4F4F
      4FFF010101FF2A2A2AFF000000FF000000FF000000FF000000FF757575FF8686
      86FF909090FF757575FF757575FF757575FF757575FF757575FF757575FF9F9F
      9FFF757575FF8B8B8BFF000000FF000000FF000000FF000000FF020202FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3232
      32FF000000FF747474FF000000FF000000FF000000FF000000FF020202FF0101
      01FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF3232
      32FF000000FF747474FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF070707FF000000FF0000
      00FF5E5E5EFF2D2D2DFF000000FF000000FF000000FF000000FF757575FF0000
      00FF000000FF757575FF757575FF757575FF757575FF787878FF000000FF0000
      00FFA7A7A7FF8D8D8DFF000000FF000000FF000000FF000000FF020202FF0202
      02FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF757575FF000000FF000000FF000000FF020202FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF757575FF000000FF000000FF000000FF000000FF4747
      47FF6B6B6BFF000000FF000000FF000000FF000000FF010101FF090909FF0000
      00FF000000FF2A2A2AFF000000FF000000FF000000FF000000FF757575FF9B9B
      9BFFAEAEAEFF757575FF757575FF757575FF757575FF757575FF797979FF0000
      00FF757575FF8B8B8BFF000000FF000000FF707070FF040404FF000000FF0303
      03FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF010101FF000000FF000000FF707070FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF010101FF000000FF000000FF000000FF000000FF000000FF0505
      05FF050505FF050505FF050505FF050505FF050505FF050505FF070707FF0303
      03FF080808FF464646FF000000FF000000FF000000FF000000FF757575FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF787878FF7676
      76FF797979FF9A9A9AFF000000FF000000FF000000FF717171FF010101FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF717171FF010101FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF1A1A1AFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF050505FF000000FF000000FF000000FF000000FF000000FF838383FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF777777FF000000FF000000FF000000FF000000FF000000FF404040FF0101
      01FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0202
      02FF000000FF000000FF000000FF000000FF000000FF000000FF404040FF0303
      03FF000000FF000000FF030303FF292929FF000000FF000000FF000000FF0202
      02FF000000FF000000FF000000FF000000FF000000FF000000FF7E7E7EFF4747
      47FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFB9B9B9FF9B9B
      9BFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF757575FF000000FF000000FF000000FF000000FF000000FF4F4F4FFF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF0D0D0DFF0101
      01FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F4FFF0404
      04FF000000FF020202FF424242FF000000FF000000FF000000FF0D0D0DFF0101
      01FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF3F3F3FFF000000FF000000FF000000FF000000FF000000FF000000FF7575
      75FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF979797FF000000FF000000FF000000FF000000FF000000FF535353FF0808
      08FF040404FF020202FF000000FF030303FF020202FF000000FF040404FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF535353FF0808
      08FF040404FF030303FF020202FF030303FF020202FF000000FF040404FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF2E2E
      2EFF010101FF010101FF010101FF010101FF010101FF010101FF010101FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF8D8D
      8DFF757575FF757575FF757575FF757575FF757575FF757575FF757575FF7575
      75FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF5353
      53FF4F4F4FFF3E3E3EFF010101FF000000FF020202FF090909FF545454FF5050
      50FF434343FF000000FF000000FF000000FF000000FF000000FF000000FF5353
      53FF4F4F4FFF3E3E3EFF010101FF000000FF020202FF090909FF545454FF5050
      50FF434343FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF727272FF020202FF020202FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF727272FF020202FF020202FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF717171FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF717171FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FEFF000000000000
      FEFF000000000000FEFF000000000000F6EF000000000000F3DF000000000000
      FE7F000000000000FC3F0000000000000C21000000000000FC7F000000000000
      FFDF000000000000F7CF000000000000FEFF000000000000FEFF000000000000
      FEFF000000000000FEFF000000000000FFFFFFFFFFFFFFFFFE7FFE7FFFFFFFFF
      FC3FFC3FCFF3CFF3C007C007CFF3CFF3C387C387C003C003C7E7C1E7C003C003
      CFE3C0E3D833D8338FF180F1C013C0130FF100F1C003C0038FF380F3DFF7DFF7
      CFE7C0E7CFF7CFF7C7C7C1C7EFF7EFF7C007C007E00FE00FE007E007FFFFFFFF
      FC7FFC7FFFFFFFFFFEFFFEFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pm1: TPopupMenu
    Left = 58
    Top = 424
    object Seeting1: TMenuItem
      Caption = 'Setting Coord.'
      OnClick = Seeting1Click
    end
  end
  object dlgOpen1: TOpenDialog
    Filter = '.3gp'
    Left = 98
    Top = 360
  end
  object tmrJam: TTimer
    OnTimer = tmrJamTimer
    Left = 10
    Top = 424
  end
end
