.class public Lcom/android/server/pm/OnePlusDexOptInjector;
.super Ljava/lang/Object;
.source "OnePlusDexOptInjector.java"


# static fields
.field private static sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpState(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->dumpState(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static initInstance(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->initInstance(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_dexoptmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOnePlusDexOptManager;

    sput-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 1

    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()V

    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0}, Lcom/android/server/pm/IOnePlusDexOptManager;->shutdown()V

    return-void
.end method
