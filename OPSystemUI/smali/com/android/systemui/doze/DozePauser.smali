.class public Lcom/android/systemui/doze/DozePauser;
.super Ljava/lang/Object;
.source "DozePauser.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field public static final TAG:Ljava/lang/String; = "DozePauser"


# instance fields
.field private final mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private final mPauseTimeout:Lcom/android/systemui/util/AlarmTimeout;

.field private final mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/doze/DozePauser;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    new-instance p2, Lcom/android/systemui/util/AlarmTimeout;

    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$DozePauser$RaYrBg9_HgEkLP8ozxXkVSg4K5c;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/-$$Lambda$DozePauser$RaYrBg9_HgEkLP8ozxXkVSg4K5c;-><init>(Lcom/android/systemui/doze/DozePauser;)V

    sget-object v1, Lcom/android/systemui/doze/DozePauser;->TAG:Ljava/lang/String;

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/doze/DozePauser;->mPauseTimeout:Lcom/android/systemui/util/AlarmTimeout;

    iput-object p4, p0, Lcom/android/systemui/doze/DozePauser;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    return-void
.end method

.method public static synthetic lambda$RaYrBg9_HgEkLP8ozxXkVSg4K5c(Lcom/android/systemui/doze/DozePauser;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozePauser;->onTimeout()V

    return-void
.end method

.method private onTimeout()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/doze/DozePauser;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method


# virtual methods
.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    sget-object p1, Lcom/android/systemui/doze/DozePauser$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/doze/DozePauser;->mPauseTimeout:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {p0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozePauser;->mPauseTimeout:Lcom/android/systemui/util/AlarmTimeout;

    iget-object p0, p0, Lcom/android/systemui/doze/DozePauser;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxScreenOffDelayMs:J

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    :goto_0
    return-void
.end method
