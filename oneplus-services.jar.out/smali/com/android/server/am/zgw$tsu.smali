.class Lcom/android/server/am/zgw$tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# instance fields
.field aj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field bj:Ljava/lang/String;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/am/zgw;


# direct methods
.method private constructor <init>(Lcom/android/server/am/zgw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/zgw$tsu;->this$0:Lcom/android/server/am/zgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/zgw$tsu;->aj:Ljava/util/ArrayList;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/zgw$tsu;->bj:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/zgw$tsu;->mUid:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/zgw;Lcom/android/server/am/ugm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw$tsu;-><init>(Lcom/android/server/am/zgw;)V

    return-void
.end method

.method private Zl()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/zgw$tsu;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/zgw$tsu;->clear()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private cgv(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/zgw$tsu;->aj:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trackAbnormalKilledProcessByOrder count:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/zgw$tsu;->aj:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusAppBootManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private clear()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/zgw$tsu;->bj:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/zgw$tsu;->mUid:I

    iget-object p0, p0, Lcom/android/server/am/zgw$tsu;->aj:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/zgw$tsu;Ljava/lang/String;IJ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/zgw$tsu;->you(Ljava/lang/String;IJ)Z

    move-result p0

    return p0
.end method

.method private you(Ljava/lang/String;IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/zgw$tsu;->bj:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/am/zgw$tsu;->mUid:I

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/zgw$tsu;->aj:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr p3, p0

    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-lez p0, :cond_0

    const-wide/32 p0, 0x3a980

    cmp-long p0, p3, p0

    if-gez p0, :cond_0

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/zgw$tsu;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/zgw$tsu;->cgv(J)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/zgw$tsu;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/zgw$tsu;->zta(Ljava/lang/String;IJ)V

    return-void
.end method

.method private zta(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/zgw$tsu;->clear()V

    iput-object p1, p0, Lcom/android/server/am/zgw$tsu;->bj:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/zgw$tsu;->mUid:I

    iget-object p0, p0, Lcom/android/server/am/zgw$tsu;->aj:Ljava/util/ArrayList;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/zgw$tsu;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/zgw$tsu;->Zl()Z

    move-result p0

    return p0
.end method
