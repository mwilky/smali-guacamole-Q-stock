.class public interface abstract Lcom/android/server/am/IOpAppRecord;
.super Ljava/lang/Object;
.source "IOpAppRecord.java"


# virtual methods
.method public abstract addIsolatedUid(II)V
.end method

.method public abstract initAppRecord(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initEnv(Landroid/content/Context;)V
.end method

.method public abstract noteFlashlightOff(I)V
.end method

.method public abstract noteFlashlightOn(I)V
.end method

.method public abstract notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract noteResetAudio()V
.end method

.method public abstract noteResetCamera()V
.end method

.method public abstract noteResetFlashlight()V
.end method

.method public abstract noteResetVideo()V
.end method

.method public abstract noteStartAudio(I)V
.end method

.method public abstract noteStartCamera(I)V
.end method

.method public abstract noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract noteStartSensor(II)V
.end method

.method public abstract noteStartVideo(I)V
.end method

.method public abstract noteStopAudio(I)V
.end method

.method public abstract noteStopCamera(I)V
.end method

.method public abstract noteStopGps(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract noteStopSensor(II)V
.end method

.method public abstract noteStopVideo(I)V
.end method

.method public abstract noteVibratorOff(I)V
.end method

.method public abstract noteVibratorOn(IJ)V
.end method

.method public abstract processDie(Lcom/android/server/am/ProcessRecord;I)V
.end method

.method public abstract processStart(Lcom/android/server/am/ProcessRecord;I)V
.end method

.method public abstract removeIsolatedUid(I)V
.end method

.method public abstract schedulePerformPoll()V
.end method
