/*
 * @Date: 2020-06-15 22:28:05
 * @LastEditors: jlwang
 * @LastEditTime: 2020-06-16 01:03:15
 */ 
#include <cstdint>
#include <map>
#include <memory>
#include <string>

class TrieNode{
public:
    void SetEnd(){ is_end_ = true; }
    bool IsEnd(){ return is_end_; }
    void Insert(std::string word){
        if(word.empty()){
            return;
        }
        std::shared_ptr<TrieNode> node(this);
        for(uint32_t i=0; i<word.size(); i++){
            char ch1 = word[i];
            if(!HasKey(ch1)){
                node->AddChild(ch1, std::make_shared<TrieNode>());
            }
            node = node->GetChild(ch1);
        }
        node->SetEnd();
    }

    std::shared_ptr<TrieNode> SearchPrefix(std::string word){
        
    }

    bool Search(std::string word){
        auto node = SearchPrefix(word);
        return node != nullptr && node->IsEnd();
    }

    std::shared_ptr<TrieNode> GetChild(char ch){
        return links_[ch - 'a'];
    }
    bool AddChild(char ch, std::shared_ptr<TrieNode> node){
        if(!HasKey(ch)){
            links_.insert({ch-'a', node});
            // links_[ch-'a'] = node;
        }
        return true;
    }
    bool HasKey(char ch){
        return links_.find(ch) != links_.end();
    }

private:
    bool is_end_;
    std::map<char, std::shared_ptr<TrieNode>> links_;
};


