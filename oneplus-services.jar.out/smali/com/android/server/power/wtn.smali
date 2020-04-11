.class Lcom/android/server/power/wtn;
.super Landroid/telephony/PhoneStateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/wtn;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnomalyStatusChange([I)V
    .locals 7

    if-eqz p1, :cond_4

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "OPSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oops!, onAnomalyStatusChange, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->fromValue(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move-result-object v0

    if-eqz v0, :cond_3

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/power/wtn;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/power/wtn;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    iget-object v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/android/server/power/wtn;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    aget v5, p1, v3

    iget-object v6, p0, Lcom/android/server/power/wtn;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->qbh(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/server/power/kth;->lG:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/server/power/wtn;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->dla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {p0, v3, v0, p1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(ZLcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V

    goto :goto_2

    :cond_3
    const-string p0, "oops!, the enum-definition is not matched with telephony"

    :goto_1
    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p0, "onAnomalyStatusChange: wrong parameter !"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/wtn;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;Landroid/telephony/ServiceState;)V

    return-void
.end method
