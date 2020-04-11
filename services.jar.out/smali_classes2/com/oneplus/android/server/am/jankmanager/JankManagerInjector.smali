.class public Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;
.super Ljava/lang/Object;
.source "JankManagerInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "JankManagerInjector"

.field private static jankManager:Lcom/oneplus/android/server/am/jankmanager/IJankManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;->jankManager:Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_jankmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    sput-object v0, Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;->jankManager:Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;->jankManager:Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/jankmanager/IJankManager;->dump(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public static initOnlineConfig()V
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;->jankManager:Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_jankmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    sput-object v0, Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;->jankManager:Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;->jankManager:Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/android/server/am/jankmanager/IJankManager;->initOnlineConfig()V

    :cond_1
    return-void
.end method

.method public static reportJank(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;->jankManager:Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_jankmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    sput-object v0, Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;->jankManager:Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/jankmanager/JankManagerInjector;->jankManager:Lcom/oneplus/android/server/am/jankmanager/IJankManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/oneplus/android/server/am/jankmanager/IJankManager;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method
