.class Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;
.super Ljava/lang/Object;
.source "UserDefinedPageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateDevicePicker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;
    }
.end annotation


# instance fields
.field private mCommands:Lcom/logitech/harmonylink/harmony/Commands;

.field private mDevice:Lcom/logitech/harmonylink/harmony/Device;

.field private mDevices:Lcom/logitech/harmonylink/harmony/Devices;

.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1168
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    .line 1174
    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    .line 1232
    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1168
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;-><init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;)Lcom/logitech/harmonylink/harmony/Commands;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    return-object v0
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;)Lcom/logitech/harmonylink/harmony/Device;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mDevice:Lcom/logitech/harmonylink/harmony/Device;

    return-object v0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->unlock()V

    .line 1213
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->dismissDialog(I)V

    .line 1214
    return-void
.end method


# virtual methods
.method public createDeviceCommandPickerDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1203
    new-instance v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;-><init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;)V

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker$CreateDeviceCommandPicker;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 1184
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getDevices()Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    .line 1185
    new-instance v2, Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v3

    const v4, 0x7f030016

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    invoke-direct {v2, v3, v4, v5}, Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1188
    .local v2, mAdapter:Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1189
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0600b5

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1190
    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1192
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1196
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1198
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1208
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->cleanup()V

    .line 1209
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1221
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    invoke-virtual {v1, p2}, Lcom/logitech/harmonylink/harmony/Devices;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/harmony/Device;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Device;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, deviceId:Ljava/lang/String;
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getDevices()Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/harmony/Devices;->getDevice(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Device;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mDevice:Lcom/logitech/harmonylink/harmony/Device;

    .line 1223
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mDevice:Lcom/logitech/harmonylink/harmony/Device;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Device;->getCommands()Lcom/logitech/harmonylink/harmony/Commands;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    .line 1224
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->showDialog(I)V

    .line 1225
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$CreateDevicePicker;->cleanup()V

    .line 1226
    return-void
.end method
