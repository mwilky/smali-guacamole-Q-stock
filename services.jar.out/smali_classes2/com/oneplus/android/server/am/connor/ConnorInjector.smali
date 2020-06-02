.class public Lcom/oneplus/android/server/am/connor/ConnorInjector;
.super Ljava/lang/Object;
.source "ConnorInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "ConnorInjector"

.field private static connor:Lcom/oneplus/android/server/am/connor/IConnor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x85

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static feed(Landroid/content/Intent;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->connor:Lcom/oneplus/android/server/am/connor/IConnor;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_connor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/connor/IConnor;

    sput-object v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->connor:Lcom/oneplus/android/server/am/connor/IConnor;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->connor:Lcom/oneplus/android/server/am/connor/IConnor;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/connor/IConnor;->feed(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public static feed(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->connor:Lcom/oneplus/android/server/am/connor/IConnor;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_connor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/connor/IConnor;

    sput-object v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->connor:Lcom/oneplus/android/server/am/connor/IConnor;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->connor:Lcom/oneplus/android/server/am/connor/IConnor;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/connor/IConnor;->feed(Lcom/android/server/wm/ActivityRecord;)V

    :cond_2
    return-void
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->connor:Lcom/oneplus/android/server/am/connor/IConnor;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_connor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/connor/IConnor;

    sput-object v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->connor:Lcom/oneplus/android/server/am/connor/IConnor;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/connor/ConnorInjector;->connor:Lcom/oneplus/android/server/am/connor/IConnor;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/connor/IConnor;->initInstance(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
