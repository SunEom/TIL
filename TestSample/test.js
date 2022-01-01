import React, { useEffect } from "react";
import axios from "axios";

const NewsPage = () => {
  const [newsList, setNewsList] = useState([]);
  
  useEffect(() => {
    //Site A
    axios.get(`${process.env.SITE_A}/news`, (response) => {
      setNewsList(response.news);
    });

    //Site B
    axios.get(`${process.env.SITE_B}/news/list`, (response) => {
      let temp = [];
      let contents = response.contents;
      for (let i = 0; i < contents.length; i++) {
        temp.push({
          title: contents[i].news_title,
          created_at: contents[i].create_time,
        });
      }

    //Site C
    axios.get(`${process.env.SITE_C}/news`, (response) => {
        let temp = [];
        let contents = response.contents;
        for (let i = 0; i < contents.length; i++) {
          temp.push({
            title: contents[i].t,
            created_at: contents[i].ct,
          });
        }

      setNewsList((currrent) => currrent.concat(temp));
    });

    //newsList를  created_at 기준으로 정렬함
  }, []);

  return (
    <>
      {newsList.map((n, index) => {
        return (
          <div key={index}>
            <h4>{n.title}</h4>
            <div>{n.created_at}</div>
          </div>
        );
      })}
    </>
  );
}

export default NewsPage;
