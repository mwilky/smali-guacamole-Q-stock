.class public final synthetic Lcom/oneplus/scene/-$$Lambda$OpSceneModeObserver$SettingsObserver$TUm0l-cGRNGDHGc16Oivsv0ulDQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/oneplus/scene/-$$Lambda$OpSceneModeObserver$SettingsObserver$TUm0l-cGRNGDHGc16Oivsv0ulDQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/scene/-$$Lambda$OpSceneModeObserver$SettingsObserver$TUm0l-cGRNGDHGc16Oivsv0ulDQ;

    invoke-direct {v0}, Lcom/oneplus/scene/-$$Lambda$OpSceneModeObserver$SettingsObserver$TUm0l-cGRNGDHGc16Oivsv0ulDQ;-><init>()V

    sput-object v0, Lcom/oneplus/scene/-$$Lambda$OpSceneModeObserver$SettingsObserver$TUm0l-cGRNGDHGc16Oivsv0ulDQ;->INSTANCE:Lcom/oneplus/scene/-$$Lambda$OpSceneModeObserver$SettingsObserver$TUm0l-cGRNGDHGc16Oivsv0ulDQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/oneplus/scene/OpSceneModeObserver$Callback;

    invoke-static {p1}, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->lambda$update$0(Lcom/oneplus/scene/OpSceneModeObserver$Callback;)V

    return-void
.end method
