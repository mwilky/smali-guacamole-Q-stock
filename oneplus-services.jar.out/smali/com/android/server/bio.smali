.class Lcom/android/server/bio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnePlusExService;->setParamSwId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ec:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/OnePlusExService;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusExService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    iput-object p2, p0, Lcom/android/server/bio;->ec:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "OnePlusExService"

    const-wide/16 v1, 0x7530

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    const-string v1, "ro.rf_version"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v2, v1}, Lcom/android/server/OnePlusExService;->access$500(Lcom/android/server/OnePlusExService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v2}, Lcom/android/server/OnePlusExService;->access$600(Lcom/android/server/OnePlusExService;)I

    move-result v2

    if-lez v2, :cond_2

    sget-boolean v1, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    if-eqz v1, :cond_1

    const-string v1, "already set sw id."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {p0, v2}, Lcom/android/server/OnePlusExService;->access$700(Lcom/android/server/OnePlusExService;I)V

    return-void

    :cond_2
    const-string v2, "sdm845"

    iget-object v3, p0, Lcom/android/server/bio;->ec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const-string v2, "TDD_FDD_Ch_In_All"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v1, v3}, Lcom/android/server/OnePlusExService;->access$700(Lcom/android/server/OnePlusExService;I)V

    iget-object p0, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {p0, v3}, Lcom/android/server/OnePlusExService;->access$800(Lcom/android/server/OnePlusExService;I)V

    return-void

    :cond_3
    const-string v2, "msmnile"

    iget-object v4, p0, Lcom/android/server/bio;->ec:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "TDD_FDD_In_All"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v1, v3}, Lcom/android/server/OnePlusExService;->access$700(Lcom/android/server/OnePlusExService;I)V

    iget-object p0, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {p0, v3}, Lcom/android/server/OnePlusExService;->access$800(Lcom/android/server/OnePlusExService;I)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v1}, Lcom/android/server/OnePlusExService;->access$400(Lcom/android/server/OnePlusExService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    if-gez v1, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v2}, Lcom/android/server/OnePlusExService;->access$400(Lcom/android/server/OnePlusExService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_6

    return-void

    :cond_6
    const-string v4, "IN"

    const/4 v5, 0x1

    if-eq v1, v5, :cond_8

    const/4 v6, 0x2

    if-eq v1, v6, :cond_7

    goto :goto_0

    :cond_7
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_9

    if-eqz v6, :cond_9

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    :goto_0
    move v5, v3

    :goto_1
    if-nez v5, :cond_a

    const-string p0, "not all in sim."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const-string v1, "all in sim."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get country from sim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {v1}, Lcom/android/server/OnePlusExService;->access$900(Lcom/android/server/OnePlusExService;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get country from location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v1, :cond_e

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_2

    :cond_d
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/OnePlusExService;->access$700(Lcom/android/server/OnePlusExService;I)V

    iget-object p0, p0, Lcom/android/server/bio;->this$0:Lcom/android/server/OnePlusExService;

    invoke-static {p0, v2}, Lcom/android/server/OnePlusExService;->access$800(Lcom/android/server/OnePlusExService;I)V

    goto :goto_4

    :cond_e
    :goto_2
    return-void

    :cond_f
    :goto_3
    sget-boolean p0, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    if-eqz p0, :cond_10

    const-string p0, "error getting rf version."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_10
    return-void

    :catch_0
    move-exception p0

    const-string v1, "setParamSwId error."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_4
    return-void
.end method
