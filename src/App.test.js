import React from 'react';
//import BrowserRouter from "react-router-dom";

import { render, screen } from '@testing-library/react';
import App from './App';

test('test 1: renders learn react link', () => {
  render( <App/> );
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

test('test 2: renders learn react link', () => {
  render( <App/> );
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

export default App;