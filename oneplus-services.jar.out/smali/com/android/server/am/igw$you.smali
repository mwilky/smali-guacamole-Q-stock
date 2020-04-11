.class Lcom/android/server/am/igw$you;
.super Lcom/android/server/am/igw$zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/igw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/igw;


# direct methods
.method public constructor <init>(Lcom/android/server/am/igw;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/igw$you;->this$0:Lcom/android/server/am/igw;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/igw$zta;-><init>(Lcom/android/server/am/igw;Lcom/android/server/am/bio;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-static {p1, p0}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/gwm;)V

    return-void
.end method


# virtual methods
.method public you(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteGpsChanged ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppRecordTest"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->cjf(I)I

    move-result p2

    and-int/lit8 p2, p2, 0x40

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/igw$you;->this$0:Lcom/android/server/am/igw;

    sget-object p2, Lcom/android/server/am/AppRecordManager$ListenerType;->GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPS for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " are not using!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/am/igw;->zta(Lcom/android/server/am/igw;Lcom/android/server/am/AppRecordManager$ListenerType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
