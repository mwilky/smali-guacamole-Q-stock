.class public final synthetic Lcom/android/settings/search/actionbar/-$$Lambda$SearchMenuController$mynmHPLrWMhxMIjxtg5hoLVqVZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/search/actionbar/SearchMenuController;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/search/actionbar/SearchMenuController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search/actionbar/-$$Lambda$SearchMenuController$mynmHPLrWMhxMIjxtg5hoLVqVZ4;->f$0:Lcom/android/settings/search/actionbar/SearchMenuController;

    iput-object p2, p0, Lcom/android/settings/search/actionbar/-$$Lambda$SearchMenuController$mynmHPLrWMhxMIjxtg5hoLVqVZ4;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search/actionbar/-$$Lambda$SearchMenuController$mynmHPLrWMhxMIjxtg5hoLVqVZ4;->f$0:Lcom/android/settings/search/actionbar/SearchMenuController;

    iget-object v1, p0, Lcom/android/settings/search/actionbar/-$$Lambda$SearchMenuController$mynmHPLrWMhxMIjxtg5hoLVqVZ4;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/search/actionbar/SearchMenuController;->lambda$onCreateOptionsMenu$0$SearchMenuController(Landroid/content/Context;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
