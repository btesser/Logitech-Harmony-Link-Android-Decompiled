.class public Lcom/logitech/harmonylink/context/GestureSensorListener;
.super Ljava/lang/Object;
.source "GestureSensorListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/GestureSensorListener$OnShakeListener;
    }
.end annotation


# instance fields
.field protected mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field private mContext:Landroid/content/Context;

.field private mShakeListener:Lcom/logitech/harmonylink/context/GestureSensorListener$OnShakeListener;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/logitech/harmonylink/context/GestureSensorListener;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/GestureSensorListener;->resume()V

    .line 20
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 47
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 52
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 54
    .local v1, values:[F
    const/4 v5, 0x0

    aget v2, v1, v5

    .line 55
    .local v2, x:F
    const/4 v5, 0x1

    aget v3, v1, v5

    .line 56
    .local v3, y:F
    const/4 v5, 0x2

    aget v4, v1, v5

    .line 58
    .local v4, z:F
    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    const v6, 0x42c0573d

    div-float v0, v5, v6

    .line 60
    .local v0, accelationSquareRoot:F
    const/high16 v5, 0x4040

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_0

    .line 62
    iget-object v5, p0, Lcom/logitech/harmonylink/context/GestureSensorListener;->mShakeListener:Lcom/logitech/harmonylink/context/GestureSensorListener$OnShakeListener;

    if-eqz v5, :cond_0

    .line 63
    iget-object v5, p0, Lcom/logitech/harmonylink/context/GestureSensorListener;->mShakeListener:Lcom/logitech/harmonylink/context/GestureSensorListener$OnShakeListener;

    invoke-interface {v5}, Lcom/logitech/harmonylink/context/GestureSensorListener$OnShakeListener;->onShake()V

    .line 67
    .end local v0           #accelationSquareRoot:F
    .end local v1           #values:[F
    .end local v2           #x:F
    .end local v3           #y:F
    .end local v4           #z:F
    :cond_0
    monitor-exit p0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/logitech/harmonylink/context/GestureSensorListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 43
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/logitech/harmonylink/context/GestureSensorListener;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/GestureSensorListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 32
    iget-object v0, p0, Lcom/logitech/harmonylink/context/GestureSensorListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/GestureSensorListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 36
    return-void
.end method

.method public setOnShakeListener(Lcom/logitech/harmonylink/context/GestureSensorListener$OnShakeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/logitech/harmonylink/context/GestureSensorListener;->mShakeListener:Lcom/logitech/harmonylink/context/GestureSensorListener$OnShakeListener;

    .line 27
    return-void
.end method
