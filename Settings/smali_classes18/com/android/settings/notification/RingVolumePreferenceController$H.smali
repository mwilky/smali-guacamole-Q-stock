.class final Lcom/android/settings/notification/RingVolumePreferenceController$H;
.super Landroid/os/Handler;
.source "RingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RingVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_EFFECTS_SUPPRESSOR:I = 0x1

.field private static final UPDATE_RINGER_MODE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RingVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$300(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$200(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    nop

    :goto_0
    return-void
.end method
