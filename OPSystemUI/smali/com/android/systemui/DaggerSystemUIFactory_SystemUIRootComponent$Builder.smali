.class public final Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerSystemUIFactory_SystemUIRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

.field private dependencyProvider:Lcom/android/systemui/DependencyProvider;

.field private systemUIFactory:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/DependencyProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->systemUIFactory:Lcom/android/systemui/SystemUIFactory;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/DependencyProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/DependencyProvider;

    invoke-direct {v0}, Lcom/android/systemui/DependencyProvider;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/DependencyProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->systemUIFactory:Lcom/android/systemui/SystemUIFactory;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/SystemUIFactory;

    invoke-direct {v0}, Lcom/android/systemui/SystemUIFactory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->systemUIFactory:Lcom/android/systemui/SystemUIFactory;

    :cond_1
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/SystemUIFactory$ContextHolder;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contextHolder(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;
    .locals 0

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/SystemUIFactory$ContextHolder;

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-object p0
.end method

.method public dependencyProvider(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;
    .locals 0

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/DependencyProvider;

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->dependencyProvider:Lcom/android/systemui/DependencyProvider;

    return-object p0
.end method

.method public systemUIFactory(Lcom/android/systemui/SystemUIFactory;)Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;
    .locals 0

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/SystemUIFactory;

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->systemUIFactory:Lcom/android/systemui/SystemUIFactory;

    return-object p0
.end method
