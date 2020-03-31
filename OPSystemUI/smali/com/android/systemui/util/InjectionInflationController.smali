.class public Lcom/android/systemui/util/InjectionInflationController;
.super Ljava/lang/Object;
.source "InjectionInflationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;,
        Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;,
        Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;,
        Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
    }
.end annotation


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater$Factory2;

.field private final mInjectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewCreator:Lcom/android/systemui/util/InjectionInflationController$ViewCreator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/InjectionInflationController;->mInjectionMap:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;-><init>(Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/util/InjectionInflationController$1;)V

    iput-object v0, p0, Lcom/android/systemui/util/InjectionInflationController;->mFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {p1}, Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;->createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/InjectionInflationController;->mViewCreator:Lcom/android/systemui/util/InjectionInflationController$ViewCreator;

    invoke-direct {p0}, Lcom/android/systemui/util/InjectionInflationController;->initInjectionMap()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/util/InjectionInflationController;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController;->mInjectionMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/util/InjectionInflationController;)Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController;->mViewCreator:Lcom/android/systemui/util/InjectionInflationController$ViewCreator;

    return-object p0
.end method

.method private initInjectionMap()V
    .locals 6

    const-class v0, Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-class v4, Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/util/InjectionInflationController;->mInjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController;->mFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    return-object p1
.end method
