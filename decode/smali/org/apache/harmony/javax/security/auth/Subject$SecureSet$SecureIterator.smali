.class Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TSST;>;"
    }
.end annotation


# instance fields
.field protected iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TSST;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TSST;>;)V"
        }
    .end annotation

    .prologue
    .line 759
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->this$1:Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    .line 761
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSST;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->this$1:Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;

    iget-object v0, v0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->this$0:Lorg/apache/harmony/javax/security/auth/Subject;

    #calls: Lorg/apache/harmony/javax/security/auth/Subject;->checkState()V
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/Subject;->access$100(Lorg/apache/harmony/javax/security/auth/Subject;)V

    .line 777
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->this$1:Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;

    #getter for: Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->permission:Lorg/apache/harmony/javax/security/auth/AuthPermission;
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;->access$600(Lorg/apache/harmony/javax/security/auth/Subject$SecureSet;)Lorg/apache/harmony/javax/security/auth/AuthPermission;

    move-result-object v0

    #calls: Lorg/apache/harmony/javax/security/auth/Subject;->checkPermission(Ljava/security/Permission;)V
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/Subject;->access$200(Ljava/security/Permission;)V

    .line 778
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 779
    return-void
.end method
