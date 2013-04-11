.class Lcom/logitech/harmonylink/context/OneTouchActivity$3;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/OneTouchActivity;->deleteOneTouchContent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/OneTouchActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    iput p2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 209
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/context/OneTouchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/model/OneTouchContent;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, imageHash:Ljava/lang/String;
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->deleteBitmapfromFile(Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/context/OneTouchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/context/OneTouchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 216
    .local v2, size:I
    iget v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->val$position:I

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 217
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/context/OneTouchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/model/OneTouchContent;

    invoke-virtual {v3, v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->setPosition(I)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/context/OneTouchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->notifyGridAdapter(Ljava/util/ArrayList;)V

    .line 222
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->updateDatabase()V

    .line 223
    return-void
.end method
