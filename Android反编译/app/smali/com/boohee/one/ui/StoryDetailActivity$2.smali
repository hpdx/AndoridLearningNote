.class Lcom/boohee/one/ui/StoryDetailActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "StoryDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StoryDetailActivity;->unPraiseStory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StoryDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/StoryDetailActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity$2;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 166
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$2;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    # getter for: Lcom/boohee/one/ui/StoryDetailActivity;->storyInfo:Lcom/boohee/model/StoryInfo;
    invoke-static {v0}, Lcom/boohee/one/ui/StoryDetailActivity;->access$000(Lcom/boohee/one/ui/StoryDetailActivity;)Lcom/boohee/model/StoryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$2;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryDetailActivity;->cbPraise:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$2;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryDetailActivity;->cbPraise:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity$2;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    # getter for: Lcom/boohee/one/ui/StoryDetailActivity;->storyInfo:Lcom/boohee/model/StoryInfo;
    invoke-static {v1}, Lcom/boohee/one/ui/StoryDetailActivity;->access$000(Lcom/boohee/one/ui/StoryDetailActivity;)Lcom/boohee/model/StoryInfo;

    move-result-object v1

    iget v2, v1, Lcom/boohee/model/StoryInfo;->envious_count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/boohee/model/StoryInfo;->envious_count:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    return-void
.end method
