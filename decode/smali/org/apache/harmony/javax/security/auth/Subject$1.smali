.class final Lorg/apache/harmony/javax/security/auth/Subject$1;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/javax/security/auth/Subject;->doAs_PrivilegedAction(Lorg/apache/harmony/javax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$combiner:Lorg/apache/harmony/javax/security/auth/SubjectDomainCombiner;

.field final synthetic val$context:Ljava/security/AccessControlContext;


# direct methods
.method constructor <init>(Ljava/security/AccessControlContext;Lorg/apache/harmony/javax/security/auth/SubjectDomainCombiner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/Subject$1;->val$context:Ljava/security/AccessControlContext;

    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/Subject$1;->val$combiner:Lorg/apache/harmony/javax/security/auth/SubjectDomainCombiner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Ljava/security/AccessControlContext;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/Subject$1;->val$context:Ljava/security/AccessControlContext;

    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/Subject$1;->val$combiner:Lorg/apache/harmony/javax/security/auth/SubjectDomainCombiner;

    invoke-direct {v0, v1, v2}, Ljava/security/AccessControlContext;-><init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V

    return-object v0
.end method
