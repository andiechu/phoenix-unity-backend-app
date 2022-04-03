import React, { useEffect, useState } from "react";
import moment from 'moment';
import axios from 'axios';


const ColorPage = () => {
    const [cubeColors, setCubeColors] = useState([
        {
            cube_color: '#000000',
            cube_id: 1,
            inserted_at: moment.now(),
            updated_at: moment.now()
        }
    ]);
    const [selectedColor, selectColor] = useState(0);
    const [error, setError] = useState(undefined);

    useEffect(() => {
        console.log('component did mount')

        axios.get('http://127.0.0.1:4000/api/all_cube_colors')    // TODO: use json config file, dev & prod env
            .then((resp) => {
                console.log(resp)
                colors = resp.data.map((color, id) => ({
                    cube_color: color.cube_color,
                    cube_id: color.cube_id,
                    inserted_at: moment(color.inserted_at),
                    updated_at: moment(color.updated_at)
                }))

                setCubeColors(colors);
                selectColor(colors.length && colors[0].cube_id);
            })
            .catch((err) => {
                setError(err.message)
            });
        
    }, []);
    
    return (
    <div>
        { error && <p> { error } </p> }

        <form>
            <select
                value={selectedColor}
                onChange={(e) => {
                    selectColor(e.target.value);
                }}
            >
                { cubeColors.map((color, i) => (
                    <option 
                        key={color.cube_id}
                        value={color.cube_id}
                        data-color={color.cube_color}
                    > { color.cube_color } </option>
                )) }
            </select>

            <button 
                type="submit"
                onClick={(e) => {
                    e.preventDefault();
                    console.log(selectedColor)
                    // TODO: update through api
                    axios.put()    // TODO: use json config file, dev & prod env
                }}
            >Submit</button>
        </form>
    </div>
    );
};

export default ColorPage;