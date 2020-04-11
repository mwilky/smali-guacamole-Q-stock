.class public final synthetic Lcom/android/settings/notification/-$$Lambda$ImportancePreference$GLzsWt7BiNJKqlCW3XDg8dS51DI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/ImportancePreference;

.field private final synthetic f$1:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$GLzsWt7BiNJKqlCW3XDg8dS51DI;->f$0:Lcom/android/settings/notification/ImportancePreference;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$GLzsWt7BiNJKqlCW3XDg8dS51DI;->f$1:Landroidx/preference/PreferenceViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$GLzsWt7BiNJKqlCW3XDg8dS51DI;->f$0:Lcom/android/settings/notification/ImportancePreference;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$GLzsWt7BiNJKqlCW3XDg8dS51DI;->f$1:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/ImportancePreference;->lambda$onBindViewHolder$3$ImportancePreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method
