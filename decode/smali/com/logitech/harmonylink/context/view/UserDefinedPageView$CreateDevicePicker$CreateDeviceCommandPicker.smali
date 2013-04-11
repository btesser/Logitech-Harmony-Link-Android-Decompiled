.class public Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;
.super Ljava/lang/Object;
.source "UserDefinedPageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CreateDeviceCommandPicker"
.end annotation


# instance fields
.field private mAdapter:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;

.field final synthetic this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->unlock()V

    .line 1284
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->removeDialog(I)V

    .line 1285
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 9

    .prologue
    .line 1240
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;
    invoke-static {v6}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->access$800(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;)Lcom/logitech/harmonylink/harmony/Commands;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1242
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    const/4 v6, 0x0

    .line 1272
    :goto_0
    return-object v6

    .line 1244
    :catch_0
    move-exception v4

    .line 1246
    .local v4, e:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1250
    .end local v4           #e:Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    iget-object v6, v6, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v6}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1251
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0600b6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v0, availableCommand:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;
    invoke-static {v6}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->access$800(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;)Lcom/logitech/harmonylink/harmony/Commands;

    move-result-object v6

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Commands;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/harmony/Command;

    .line 1257
    .local v2, command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1262
    .end local v2           #command:Lcom/logitech/harmonylink/harmony/Command;
    :cond_1
    new-instance v6, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;

    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    iget-object v7, v7, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    const v8, 0x7f030011

    invoke-direct {v6, v7, v8, v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;-><init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;ILjava/util/ArrayList;)V

    iput-object v6, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->mAdapter:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;

    .line 1265
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->mAdapter:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1267
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1269
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1270
    .local v3, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v3, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v6, v3

    .line 1272
    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1277
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->cleanup()V

    .line 1278
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 22
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->mAdapter:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DeviceCommandsAdapter;->getItem(I)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v21

    .line 1293
    .local v21, command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual/range {v21 .. v21}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v5

    .line 1294
    .local v5, commandId:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    move-object v8, v0

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mDevice:Lcom/logitech/harmonylink/harmony/Device;
    invoke-static {v8}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->access$900(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;)Lcom/logitech/harmonylink/harmony/Device;

    move-result-object v8

    invoke-virtual {v8}, Lcom/logitech/harmonylink/harmony/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lcom/logitech/harmonylink/harmony/Command;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1295
    .local v6, label:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/logitech/harmonylink/harmony/Command;->getHashKey()Ljava/lang/String;

    move-result-object v9

    .line 1297
    .local v9, action:Ljava/lang/String;
    new-instance v4, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 1299
    .local v4, buttonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;
    new-instance v19, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    move-object v7, v0

    iget-object v7, v7, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    move-object v8, v0

    iget-object v8, v8, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v8}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    move-object v9, v0

    .end local v9           #action:Ljava/lang/String;
    iget-object v9, v9, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v9}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v9

    move-object/from16 v0, v19

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;-><init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Landroid/content/Context;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 1300
    .local v19, buttonInfo:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;
    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setButtonDef(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    move-object v7, v0

    iget-object v7, v7, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getAddItemCellInfo()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-result-object v20

    .line 1303
    .local v20, cellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCellX()I

    move-result v7

    invoke-virtual/range {v20 .. v20}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->getCellY()I

    move-result v8

    move-object/from16 v0, v19

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setCell(II)V

    .line 1304
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v19

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setSpan(II)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    move-object v7, v0

    iget-object v7, v7, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentScreenView()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v7

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 1308
    .local v11, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    move-object v7, v0

    iget-object v10, v7, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    const/4 v12, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getCellX()I

    move-result v13

    invoke-virtual/range {v19 .. v19}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getCellY()I

    move-result v14

    invoke-virtual/range {v19 .. v19}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getSpanX()I

    move-result v15

    invoke-virtual/range {v19 .. v19}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getSpanY()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    move-object v7, v0

    iget-object v7, v7, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v7}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-wide/16 v14, -0x64

    const/16 v16, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getCellX()I

    move-result v17

    invoke-virtual/range {v19 .. v19}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getCellY()I

    move-result v18

    move-object/from16 v13, v19

    invoke-static/range {v12 .. v18}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;JIII)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->this$1:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;

    move-object v7, v0

    iget-object v7, v7, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getModel()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->addDesktopItem(Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V

    .line 1318
    invoke-direct/range {p0 .. p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->cleanup()V

    .line 1320
    return-void
.end method
