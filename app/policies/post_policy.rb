class PostPolicy < ApplicationPolicy
    def index?
      user.admin? or not record.published?
    end

    def show?
       index?
    end

    def create?
        index?
    end

    def new?
        index?
    end

    def update?
        index?
    end

    def edit?
        index?
    end

    def destroy?
        index?
    end
end