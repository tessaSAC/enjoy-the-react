import React, { useState } from "react";

import "./app.css";

export default function App() {
    const [clicks, setClicks] = useState(0);
    return (
        <>
            <h1 className="red">Hello world!</h1>
            <button onClick={() => setClicks(clicks + 1)}>
                Clicked {clicks} times
            </button>
        </>
    );
}
