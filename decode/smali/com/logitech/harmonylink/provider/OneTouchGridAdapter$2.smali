.class Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$2;
.super Ljava/lang/Object;
.source "OneTouchGridAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->storeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$2;->this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$2;->this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I
    invoke-static {v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->access$300(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$2;->this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mTotalIconsToGet:I
    invoke-static {v1}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->access$400(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$2;->this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->showWarningMsg()V

    .line 359
    :cond_0
    return-void
.end method
