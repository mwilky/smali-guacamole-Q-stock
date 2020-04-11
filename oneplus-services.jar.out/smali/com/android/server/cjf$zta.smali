.class Lcom/android/server/cjf$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cjf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cjf$zta$you;,
        Lcom/android/server/cjf$zta$zta;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ":"

.field static final Fd:I = 0xbb8

.field private static final Gd:J = 0x493e0L

.field private static final Hd:I = 0x0

.field private static final Id:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "OpAlarmAlignment_ALIGNMENT"

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "AlarmManagement"


# instance fields
.field private Ad:Lcom/android/server/cjf$zta$you;

.field private Bd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private Cd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private Dd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private Ed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConfigHandler:Landroid/os/Handler;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOnlineConfigEnabled:Z

.field final synthetic this$0:Lcom/android/server/cjf;

.field private ud:Z

.field private vd:Z

.field private wd:J

.field private xd:Z

.field private yd:Z

.field private zd:J


# direct methods
.method constructor <init>(Lcom/android/server/cjf;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cjf$zta;->this$0:Lcom/android/server/cjf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/cjf$zta;->ud:Z

    iput-boolean p1, p0, Lcom/android/server/cjf$zta;->vd:Z

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/cjf$zta;->wd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cjf$zta;->mOnlineConfigEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/cjf$zta;->xd:Z

    iput-boolean p1, p0, Lcom/android/server/cjf$zta;->yd:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/cjf$zta;->zd:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/cjf$zta;->Cd:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/cjf$zta;->Dd:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/cjf$zta;->Ed:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/server/cjf$zta;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/cjf$zta;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/cjf$zta;->mConfigHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/cjf$zta$you;

    invoke-direct {p1, p0, p2}, Lcom/android/server/cjf$zta$you;-><init>(Lcom/android/server/cjf$zta;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/cjf$zta;->Ad:Lcom/android/server/cjf$zta$you;

    return-void
.end method

.method static synthetic zta(Lcom/android/server/cjf$zta;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/cjf$zta;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/cjf$zta;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cjf$zta;->ud:Z

    return p1
.end method


# virtual methods
.method public G()V
    .locals 32

    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-string v2, "black_action"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    const-string v3, "alarm.push.timer.action"

    const-string v4, "wns.heartbeat"

    const-string v5, "action_heartbeat_plot_alarm_cycle"

    const-string v6, "io.rong.push.HeartBeat"

    const-string v7, "action_keep_alive_close"

    const-string v8, "HEART_BEAT"

    const-string v9, "CONNECT_EVENT"

    const-string v10, "AlarmTaskSchedule"

    const-string v11, "com.q.m.QS"

    const-string v12, "intent.action.COCKROACH"

    const-string v13, "com.baidu.sofire.x0"

    const-string v14, "push_heart_beat"

    const-string v15, "com.huawei.intent.action.PUSH_OFF"

    const-string v16, "com.huawei.action.CONNECT_PUSHSRV"

    const-string v17, "com.huawei.intent.action.PUSH"

    const-string v18, "hyphenate.chat.heatbeat.soulapp#soul"

    const-string v19, "com.tencent.android.tpush.service.channel.heartbeatIntent"

    const-string v20, "com.dianping.push.START"

    const-string v21, "com.dianping.push.RECONNECT"

    const-string v22, "com.dianping.push.KEEP_ALIVE"

    const-string v23, "com.xiaomi.push.PING_TIMER"

    const-string v24, "com.baidu.android.pushservice.PushService"

    const-string v25, "cn.jpush.android.service.AlarmReceiver"

    const-string v26, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE"

    const-string v27, "com.jio.myjio/com.ril.jio.jiosdk.receiver.JioNetworkChangeReceiver"

    const-string v28, "com.sinovatech.unicom.ui/com.sinovatech.unicom.separatemodule.notice.NoticeWakefulReceiver"

    const-string v29, "com.google.android.gms.gcm.HEARTBEAT_ALARM"

    const-string v30, "com.google.android.intent.action.GCM_RECONNECT"

    const-string v31, "alibaba_push_wakeup_alarm_action"

    filled-new-array/range {v3 .. v31}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    const-string v3, "alarm.push.timer.action"

    const-string v4, "wns.heartbeat"

    const-string v5, "action_heartbeat_plot_alarm_cycle"

    const-string v6, "io.rong.push.HeartBeat"

    const-string v7, "action_keep_alive_close"

    const-string v8, "HEART_BEAT"

    const-string v9, "CONNECT_EVENT"

    const-string v10, "AlarmTaskSchedule"

    const-string v11, "com.q.m.QS"

    const-string v12, "intent.action.COCKROACH"

    const-string v13, "com.baidu.sofire.x0"

    const-string v14, "push_heart_beat"

    const-string v15, "com.huawei.intent.action.PUSH_OFF"

    const-string v16, "com.huawei.action.CONNECT_PUSHSRV"

    const-string v17, "com.huawei.intent.action.PUSH"

    const-string v18, "hyphenate.chat.heatbeat.soulapp#soul"

    const-string v19, "com.tencent.android.tpush.service.channel.heartbeatIntent"

    const-string v20, "com.dianping.push.START"

    const-string v21, "com.dianping.push.RECONNECT"

    const-string v22, "com.dianping.push.KEEP_ALIVE"

    const-string v23, "com.xiaomi.push.PING_TIMER"

    const-string v24, "com.baidu.android.pushservice.PushService"

    const-string v25, "cn.jpush.android.service.AlarmReceiver"

    const-string v26, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE"

    const-string v27, "com.jio.myjio/com.ril.jio.jiosdk.receiver.JioNetworkChangeReceiver"

    const-string v28, "com.sinovatech.unicom.ui/com.sinovatech.unicom.separatemodule.notice.NoticeWakefulReceiver"

    const-string v29, "alibaba_push_wakeup_alarm_action"

    filled-new-array/range {v3 .. v29}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iget-object v0, v0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bio(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cjf$zta;->vd:Z

    iput-boolean p1, p0, Lcom/android/server/cjf$zta;->vd:Z

    return v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "  Alarm Alignment Information:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    ALIGNMENT_DEBOUNCE = 3000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    ALIGNMENT_WINDOW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cjf$zta;->zd:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    iget-wide v1, p0, Lcom/android/server/cjf$zta;->wd:J

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAlignmentEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/cjf$zta;->vd:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/cjf$zta;->yd:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAlignmentActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/cjf$zta;->ud:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/cjf$zta;->xd:Z

    if-eqz v1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    OnlineConfigEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/cjf$zta;->mOnlineConfigEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    mAlarmBlacklist: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/cjf$zta;->zta(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    const-string v0, "    mAlarmWhitelist: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cjf$zta;->Cd:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/cjf$zta;->zta(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    const-string v0, "    mAlarmSpecialList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cjf$zta;->Dd:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/cjf$zta;->zta(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    const-string v0, "    mWhiteListActionList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cjf$zta;->Ed:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/cjf$zta;->zta(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    return-void
.end method

.method grabOnlineConfig()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/cjf$zta;->mContext:Landroid/content/Context;

    const-string v2, "AlarmManagement"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/cjf$zta;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public igw(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cjf$zta;->yd:Z

    iput-boolean p1, p0, Lcom/android/server/cjf$zta;->yd:Z

    return v0
.end method

.method public kth(Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cjf$zta;->xd:Z

    iget-boolean p0, p0, Lcom/android/server/cjf$zta;->xd:Z

    return p0
.end method

.method registerOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/cjf$zta;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cjf$zta;->mConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/cjf$zta$zta;

    invoke-direct {v3, p0}, Lcom/android/server/cjf$zta$zta;-><init>(Lcom/android/server/cjf$zta;)V

    const-string v4, "AlarmManagement"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cjf$zta;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p0, p0, Lcom/android/server/cjf$zta;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/cjf$zta;->mOnlineConfigEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "OpAlarmAlignment_ALIGNMENT"

    const-string p1, "[OnlineConfig] OnlineConfig is turned off."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "OpAlarmAlignment_ALIGNMENT"

    const-string p1, "[OnlineConfig] AlignmentConfigObserver jsonArray ==null"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/cjf;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] jsonArray = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpAlarmAlignment_ALIGNMENT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_12

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_alignment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iput-boolean v3, p0, Lcom/android/server/cjf$zta;->vd:Z

    goto/16 :goto_9

    :cond_3
    iput-boolean v0, p0, Lcom/android/server/cjf$zta;->vd:Z

    goto/16 :goto_a

    :cond_4
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_windowLength"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/cjf$zta;->this$0:Lcom/android/server/cjf;

    invoke-static {v5}, Lcom/android/server/cjf;->you(Lcom/android/server/cjf;)Lcom/android/server/cjf$zta;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/server/cjf$zta;->sis(J)V

    :cond_5
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_11

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const-string v8, "action"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v8, v0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/cjf;->access$300()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    invoke-virtual {p0, v6, v4}, Lcom/android/server/cjf$zta;->zta(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    :cond_7
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_8
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "whitelist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/cjf$zta;->Cd:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_11

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const-string v8, "action"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v8, v0

    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_9

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/android/server/cjf$zta;->Cd:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v8, p0, Lcom/android/server/cjf$zta;->Cd:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/cjf;->access$300()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/cjf$zta;->Cd:Ljava/util/HashMap;

    invoke-virtual {p0, v6, v4}, Lcom/android/server/cjf$zta;->zta(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    :cond_a
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_b
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "special_list"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/cjf$zta;->Dd:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_11

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const-string v8, "action"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v8, v0

    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_c

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_c
    iget-object v5, p0, Lcom/android/server/cjf$zta;->Dd:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v8, p0, Lcom/android/server/cjf$zta;->Dd:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/cjf;->access$300()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/cjf$zta;->Dd:Ljava/util/HashMap;

    invoke-virtual {p0, v6, v4}, Lcom/android/server/cjf$zta;->zta(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    :cond_d
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catchall_2
    move-exception p0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    :cond_e
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "white_list_action_list"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/cjf$zta;->Ed:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_11

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const-string v8, "action"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v8, v0

    :goto_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_f

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_f
    iget-object v5, p0, Lcom/android/server/cjf$zta;->Ed:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v8, p0, Lcom/android/server/cjf$zta;->Ed:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/cjf;->access$300()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/server/cjf$zta;->Ed:Ljava/util/HashMap;

    invoke-virtual {p0, v6, v4}, Lcom/android/server/cjf$zta;->zta(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    :cond_10
    monitor-exit v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catchall_3
    move-exception p0

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw p0

    :cond_11
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_a
    const-string p0, "OpAlarmAlignment_ALIGNMENT"

    const-string p1, "[OnlineConfig] FrequentBlackListConfigUpdater updated complete !"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_b

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAlarmAlignment_ALIGNMENT"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void
.end method

.method public sis(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/android/server/cjf$zta;->wd:J

    return-void
.end method

.method public tsu(J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/cjf$zta;->zd:J

    iget-wide p0, p0, Lcom/android/server/cjf$zta;->zd:J

    return-wide p0
.end method

.method public wtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cjf$zta;->mOnlineConfigEnabled:Z

    return-void
.end method

.method you(J)J
    .locals 6

    iget-wide v0, p0, Lcom/android/server/cjf$zta;->zd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/android/server/cjf$zta;->wd:J

    :cond_0
    rem-long v4, p1, v0

    cmp-long p0, v4, v2

    if-lez p0, :cond_1

    sub-long/2addr v0, v4

    add-long/2addr p1, v0

    :cond_1
    return-wide p1
.end method

.method you(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return p2
.end method

.method zta(Lcom/android/server/AlarmManagerService$Alarm;Z)J
    .locals 11

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz p2, :cond_0

    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    goto :goto_0

    :cond_0
    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    :goto_0
    iget-boolean p2, p0, Lcom/android/server/cjf$zta;->vd:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/server/cjf$zta;->yd:Z

    if-nez p2, :cond_1

    return-wide v1

    :cond_1
    iget-boolean p2, p0, Lcom/android/server/cjf$zta;->ud:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/server/cjf$zta;->xd:Z

    if-nez p2, :cond_2

    return-wide v1

    :cond_2
    iget-object p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<listener>:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/cjf$zta;->Dd:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/cjf$zta;->Dd:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/server/cjf$zta;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/cjf$zta;->Ed:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/server/cjf$zta;->you(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v3, p0, Lcom/android/server/cjf$zta;->this$0:Lcom/android/server/cjf;

    invoke-static {v3}, Lcom/android/server/cjf;->sis(Lcom/android/server/cjf;)Lcom/android/server/AlarmManagerService$AmsInner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$AmsInner;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object v3

    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-virtual {v3, v7}, Lcom/android/server/AppStateTracker;->isUidPowerSaveWhitelisted(I)Z

    move-result v3

    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x2710

    if-lt v7, v8, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    if-nez v6, :cond_6

    return-wide v1

    :cond_6
    iget-object v7, p0, Lcom/android/server/cjf$zta;->Cd:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_1
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/cjf$zta;->Cd:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v3, v8}, Lcom/android/server/cjf$zta;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    monitor-exit v7

    return-wide v1

    :cond_7
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-eqz v3, :cond_8

    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_a

    :cond_8
    iget-object v3, p0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    monitor-enter v3

    if-nez v6, :cond_9

    :try_start_2
    const-string v6, "black_action"

    iget-object v7, p0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/server/cjf$zta;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/server/cjf$zta;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result p2

    if-nez p2, :cond_9

    monitor-exit v3

    return-wide v1

    :cond_9
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    invoke-static {}, Lcom/android/server/cjf;->access$300()Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "Before alignment: "

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/cjf$zta;->zta(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V

    :cond_b
    if-eq v0, v5, :cond_c

    if-nez v0, :cond_d

    :cond_c
    move v4, v5

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {p0, v1, v2}, Lcom/android/server/cjf$zta;->you(J)J

    move-result-wide v0

    goto :goto_3

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/cjf$zta;->you(J)J

    move-result-wide v0

    sub-long/2addr v0, v3

    :goto_3
    invoke-static {}, Lcom/android/server/cjf;->access$300()Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p2, "After alignment: "

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/cjf$zta;->zta(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V

    :cond_f
    return-wide v0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method zta(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V
    .locals 7

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<listener>:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    goto :goto_2

    :cond_3
    move-wide v3, p3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " when="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", packageName="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const-string p2, "null"

    :goto_3
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", tag="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", type="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/cjf$zta;->this$0:Lcom/android/server/cjf;

    invoke-static {p0}, Lcom/android/server/cjf;->sis(Lcom/android/server/cjf;)Lcom/android/server/AlarmManagerService$AmsInner;

    move-result-object p0

    iget p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {p0, p2}, Lcom/android/server/AlarmManagerService$AmsInner;->getLabelForType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", window="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", interval="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAlarmAlignment_ALIGNMENT"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method zta(Ljava/util/HashMap;Ljava/io/PrintWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "package="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | actions="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_3

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "OpAlarmAlignment_ALIGNMENT"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public zta(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<listener>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    const-string v4, "black_action"

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/cjf$zta;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/cjf$zta;->Dd:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/cjf$zta;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/cjf$zta;->Bd:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/cjf$zta;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object p1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/cjf$zta;->Cd:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/cjf$zta;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result p0

    if-nez p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method zta(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    const/4 p3, 0x0

    if-nez p0, :cond_0

    return p3

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "black_action"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_3
    return p3
.end method
