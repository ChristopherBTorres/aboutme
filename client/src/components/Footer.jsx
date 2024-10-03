import React from 'react';
import { Link, useMatch, useResolvedPath } from 'react-router-dom';

export default function Footer() {
  return (
    <footer className='footer'>
        <Link to="/Contact">Contact Me</Link>
    </footer>
  );
}