.class public Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserAuthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/context/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 269
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    .line 274
    new-instance v0, Lcom/logitech/harmonylink/util/AuthToken;

    invoke-direct {v0}, Lcom/logitech/harmonylink/util/AuthToken;-><init>()V

    .line 276
    .local v0, authToken:Lcom/logitech/harmonylink/util/AuthToken;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/logitech/harmonylink/util/AuthToken;->getUserAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, userAuthToken:Ljava/lang/String;
    move-object v3, v2

    .line 284
    .end local v2           #userAuthToken:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 280
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 282
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 269
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #calls: Lcom/logitech/harmonylink/context/LoginActivity;->submit(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/logitech/harmonylink/context/LoginActivity;->access$1300(Lcom/logitech/harmonylink/context/LoginActivity;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 290
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 291
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #setter for: Lcom/logitech/harmonylink/context/LoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/LoginActivity;->access$502(Lcom/logitech/harmonylink/context/LoginActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 292
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$500(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/LoginActivity;->dialogTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 294
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mOkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$1100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mDlgStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$1200(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    const v2, 0x7f060098

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$UserAuthTask;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 298
    return-void
.end method
