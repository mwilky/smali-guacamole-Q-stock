.class Lcom/android/settings/homepage/contextualcards/ContextualCardManager$1;
.super Ljava/util/TreeSet;
.source "ContextualCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->onContextualCardUpdated(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$1;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$1;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
