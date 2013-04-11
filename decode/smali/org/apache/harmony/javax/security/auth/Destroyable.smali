.class public interface abstract Lorg/apache/harmony/javax/security/auth/Destroyable;
.super Ljava/lang/Object;
.source "Destroyable.java"


# virtual methods
.method public abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/DestroyFailedException;
        }
    .end annotation
.end method

.method public abstract isDestroyed()Z
.end method
