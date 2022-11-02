
const hex = () => chance.string({length:3, pool:'3456789AB'});
const num = () => chance.natural({min:350,max:600});
const getdate = (d1,d2) => dayjs(new Date(chance.natural({min:d1,max:d2}))).format('YYYY-MM-DD HH:mm:ss');

const getUsers = () => (new Array(10)).fill(0).map((o,i)=>{
    o = {};
    o.id = i + 1;
    o.name = chance.name();
    o.username = 'user'+o.id;
    o.password = md5('pass');
    o.email = o.username+'@gmail.com';
    o.img = `https://via.placeholder.com/${num()}x${num()}/${hex()}/fff/?text=${o.name}`;
    o.date_create = getdate(Date.parse('2020/01/01'),Date.now());
    return o;
});

const getColors = () =>(new Array(50)).fill(0).map((o,i)=>{
    o = {};
    o.id = i + 1;
    o.user_id = chance.natural({min:1,max:10}); //定义对应用户
    o.name = chance.first();
    o.color = chance.pickone(['ORANGE','BLACK','WHITE','GRAY','BROWN','Blue','Cinnamon','Fawn','Ginger','Calico']);
    o.img = `https://via.placeholder.com/${num()}x${num()}/${hex()}/fff/?text=${o.name}`;
    o.date_create = getdate(Date.parse('2020/01/01'),Date.now());
    theColorArry = o
    return o;
});

let theColorArry=[]

const getLocations = () => {

    let theFinalArray = []
    let theId = 0
    
    for(i=1; i<11;i++){

        let thisUserId= i

        let colorIdList_underThisuserId=[]

        theColorArry.forEach((item)=>{//循环颜色列表
            if(item.user_id==thisUserId){//找出当前userI的下面的所有颜色
                colorIdList_underThisuserId.push(item.id)//插入列表
            }
        })
    
        theFinalArray = theFinalArray.concat((new Array(25)).fill(0).map((o)=>{
            o = {};
            o.id = theId+1;
            theId = o.id;
            o.user_id = thisUserId; //定义对应用户
            o.color_id = chance.pickone(colorIdList_underThisuserId); //定义对应颜色
            o.lat = chance.latitude({min:37.711,max:37.819})
            o.lng = chance.longitude({min:-122.514,max:-122.354})
            o.friendly = chance.natural({min:1,max:5});
            o.description = chance.sentence();
            o.img = `https://via.placeholder.com/${num()}x${num()}/${hex()}/fff/?text=${o.name}`;
            o.date_create = getdate(Date.parse('2020/01/01'),Date.now());
            return o;
        }))

        console.log(thisUserId,colorIdList_underThisuserId)

    }
    console.log(theFinalArray)
    return theFinalArray
}

const exportAsJSON = (type,data) => {
    document.querySelector('.output').innerHTML = `
<h2>${type}</h2>
<pre>
[
${data.map((o)=>`${JSON.stringify(o)}`).join(',\n')}
]
</pre>
`;
}

const exportAsSQL = (type,data,tar) => {
    if(tar == 1){ theColorArry = data}
    document.querySelector('.output').innerHTML = `
<h2>${type}</h2>
<pre>
INSERT INTO \`${type}\` (\`${Object.keys(data[0]).join('`, `')}\`) VALUES
${data.map((o)=>`(${JSON.stringify(Object.values(o)).slice(1,-1)})`).join(',\n')}
</pre>
`;
}

window.addEventListener('DOMContentLoaded',()=>{
    document.querySelector('.users-json').addEventListener('click',()=>{ exportAsJSON('Users',getUsers()); });
    document.querySelector('.animals-json').addEventListener('click',()=>{ exportAsJSON('Colors',getColors()); });
    document.querySelector('.locations-json').addEventListener('click',()=>{ exportAsJSON('Locations',getLocations()); });
    document.querySelector('.users-sql').addEventListener('click',()=>{ exportAsSQL('track_202290_users',getUsers()); });
    document.querySelector('.animals-sql').addEventListener('click',()=>{ exportAsSQL('track_202290_colors',getColors(),1); });
    document.querySelector('.locations-sql').addEventListener('click',()=>{ exportAsSQL('track_202290_locations',getLocations()); console.log(theColorArry)});
});