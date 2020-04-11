.class public Lcom/android/server/OpAlarmAlignmentInjector;
.super Ljava/lang/Object;
.source "OpAlarmAlignmentInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OpAlarmAlignmentInjector"

.field private static opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "OpAlarmAlignmentInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deliverDelayAlarm(Landroid/os/Message;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.deliverDelayAlarm()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmAlignment;->deliverDelayAlarm(Landroid/os/Message;)V

    :cond_2
    return-void
.end method

.method public static initAlarmAlignment(II)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.initAlarmAlignment()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmAlignment;->initAlarmAlignment(II)V

    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/AlarmManagerService$AmsInner;Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_alignment:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmAlignment;

    sput-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    :cond_2
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmAlignment;->initInstance(Lcom/android/server/AlarmManagerService$AmsInner;Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public static setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z
    .locals 10

    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpAlarmAlignmentInjector"

    const-string v2, "call AlarmAlignmentInjector.setAlarmAlignment()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v3, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v3, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-interface/range {v3 .. v9}, Lcom/android/server/IOpAlarmAlignment;->setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static setBlackAlarm(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.setBlackAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmAlignment;->setBlackAlarm(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public static setBlockAlarmUid(Ljava/lang/String;ZI)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.setBlockAlarmUid()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpAlarmAlignment;->setBlockAlarmUid(Ljava/lang/String;ZI)V

    :cond_2
    return-void
.end method

.method public static shellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpAlarmAlignmentInjector"

    const-string v2, "call AlarmAlignmentInjector.dump()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmAlignment;->shellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static updateInteractiveStartTime(J)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/OpAlarmAlignmentInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpAlarmAlignmentInjector"

    const-string v1, "call AlarmAlignmentInjector.updateInteractiveStartTime()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/OpAlarmAlignmentInjector;->opAlarmAlignment:Lcom/android/server/IOpAlarmAlignment;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmAlignment;->updateInteractiveStartTime(J)V

    :cond_2
    return-void
.end method
