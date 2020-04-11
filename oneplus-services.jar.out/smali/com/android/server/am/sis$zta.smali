.class Lcom/android/server/am/sis$zta;
.super Lcom/android/server/am/rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/sis;


# direct methods
.method private constructor <init>(Lcom/android/server/am/sis;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    invoke-direct {p0}, Lcom/android/server/am/rtg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/sis;Lcom/android/server/am/you;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/sis$zta;-><init>(Lcom/android/server/am/sis;)V

    return-void
.end method


# virtual methods
.method public noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/ire;->Kl:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p5, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object p4, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteProcessStateChanged uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pkg = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isProcessStart = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isMainProcess = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mTotalCount = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    invoke-static {p2}, Lcom/android/server/am/sis;->zta(Lcom/android/server/am/sis;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mTotalMem = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    invoke-static {p2}, Lcom/android/server/am/sis;->ssp(Lcom/android/server/am/sis;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/android/server/am/sis;->you(Lcom/android/server/am/sis;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    iget-object p2, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    invoke-static {p2, p3}, Lcom/android/server/am/sis;->sis(Lcom/android/server/am/sis;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    invoke-static {p1, p3}, Lcom/android/server/am/sis;->tsu(Lcom/android/server/am/sis;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    invoke-static {p2, p1, p3}, Lcom/android/server/am/sis;->zta(Lcom/android/server/am/sis;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    invoke-static {p2, p3}, Lcom/android/server/am/sis;->rtg(Lcom/android/server/am/sis;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    invoke-static {p2, p1, p3}, Lcom/android/server/am/sis;->you(Lcom/android/server/am/sis;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    invoke-static {p1, p3}, Lcom/android/server/am/sis;->ssp(Lcom/android/server/am/sis;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    invoke-static {p1, p3}, Lcom/android/server/am/sis;->zta(Lcom/android/server/am/sis;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "undefined pkg = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppDiedStatistics"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/sis$zta;->this$0:Lcom/android/server/am/sis;

    invoke-static {p0}, Lcom/android/server/am/sis;->you(Lcom/android/server/am/sis;)I

    :cond_5
    return-void
.end method
