.class Lcom/logitech/harmonylink/context/MouseSensitivityActivity$2;
.super Ljava/lang/Object;
.source "MouseSensitivityActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/MouseSensitivityActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/MouseSensitivityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$2;->this$0:Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 86
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 79
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity$2;->this$0:Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;->mscale:D

    .line 74
    return-void
.end method
