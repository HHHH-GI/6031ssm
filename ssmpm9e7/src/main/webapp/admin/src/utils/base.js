const base = {
    get() {
        return {
            url : "http://localhost:8080/ssmpm9e7/",
            name: "ssmpm9e7",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmpm9e7/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "旅游路线规划系统"
        } 
    }
}
export default base
