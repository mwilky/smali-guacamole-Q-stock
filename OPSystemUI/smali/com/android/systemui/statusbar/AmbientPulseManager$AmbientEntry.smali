.class final Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;
.super Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;
.source "AmbientPulseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/AmbientPulseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AmbientEntry"
.end annotation


# instance fields
.field private extended:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/AmbientPulseManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/AmbientPulseManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;->this$0:Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;-><init>(Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/AmbientPulseManager;Lcom/android/systemui/statusbar/AmbientPulseManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;-><init>(Lcom/android/systemui/statusbar/AmbientPulseManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;->extendPulse()V

    return-void
.end method

.method private extendPulse()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;->extended:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;->extended:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->updateEntry(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected calculateFinishTime()J
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->calculateFinishTime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;->extended:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;->this$0:Lcom/android/systemui/statusbar/AmbientPulseManager;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/AmbientPulseManager;->mExtensionTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;->extended:Z

    return-void
.end method
