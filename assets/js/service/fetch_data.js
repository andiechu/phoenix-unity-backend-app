import axios from 'axios';

// TODO: WRONG!!!! HAVEN'T FINISHED!


export function fetch_all_cube_colors() {
    axios.get('/api/all_cube_colors')    // TODO: use json config file, dev & prod env
        .then((resp) => {
            console.log(resp)
            colors = resp.data.map((color, id) => ({
                cube_color: color.cube_color,
                cube_id: color.cube_id,
                inserted_at: moment(color.inserted_at),
                updated_at: moment(color.updated_at)
            }))

            return {
                colors, 
                selectedColor: colors.length && colors[0].cube_id,
                error: undefined
            };
            
        })
        .catch((err) => {
            return { error: err };
        });
}


export function sendMessageToChannel(channel, message) {

}