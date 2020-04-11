.class public final synthetic Lcom/android/settings/widget/-$$Lambda$VideoPreference$aFxutwOOqnKuOzRYe5J9dLOLMfs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/widget/-$$Lambda$VideoPreference$aFxutwOOqnKuOzRYe5J9dLOLMfs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$aFxutwOOqnKuOzRYe5J9dLOLMfs;

    invoke-direct {v0}, Lcom/android/settings/widget/-$$Lambda$VideoPreference$aFxutwOOqnKuOzRYe5J9dLOLMfs;-><init>()V

    sput-object v0, Lcom/android/settings/widget/-$$Lambda$VideoPreference$aFxutwOOqnKuOzRYe5J9dLOLMfs;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$VideoPreference$aFxutwOOqnKuOzRYe5J9dLOLMfs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p1}, Lcom/android/settings/widget/VideoPreference;->lambda$initMediaPlayer$2(Landroid/media/MediaPlayer;)V

    return-void
.end method
